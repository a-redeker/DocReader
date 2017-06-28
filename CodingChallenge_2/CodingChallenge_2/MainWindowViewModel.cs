using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodingChallenge_2
{
    public class MainWindowViewModel
    {
        public virtual string text { get; set; }
        public string filename { get; set; }
        public string textField { get; set; }
        public virtual string matches { get; set; }
        public virtual string percWordsFound { get; set; }
        public virtual string totalWordsFound { get; set; }
        public string path = string.Empty;
        public int counter;
        public int totalWords;
        BackgroundWorker worker = new BackgroundWorker();

        public int progressValue { get; set; } = 0;
        public virtual void NewButtonPress()
        {
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();
            // Set filter for file extension and default file extension
            dlg.DefaultExt = ".txt";
            // Display OpenFileDialog by calling ShowDialog method
            Nullable<bool> result = dlg.ShowDialog();


            worker.DoWork += delegate (object x, DoWorkEventArgs args)
            {
                // Open document
                filename = dlg.FileName;
                path = filename;

                // Open the stream and read it back.
                using (StreamReader sr = File.OpenText(path))
                {
                    int maxlength = sr.ToString().Length;
                    int currentlength = 0;
                    string s = "";
                    text = "";
                    StringBuilder sb = new StringBuilder();
                    while ((s = sr.ReadLine()) != null)
                    {
                        currentlength += s.Length;
                        progressValue = ((currentlength / maxlength) * 100);
                        sb.AppendLine(s);
                    }
                    text = sb.ToString();
                }

            };

            // Get the selected file name and display in a TextBox
            if (result == true)
            {
                worker.RunWorkerAsync(); 
            }
        }               
        public virtual void SaveFile()
        {
            File.WriteAllText(path, text);
        }

       public virtual void SearchButtonPress()
        {
            counter = 0;
            totalWords = 0;
            percWordsFound = "";
            if (!text.Equals("") && !textField.Equals(""))
            {
                string[] words = text.Split(new char[0], StringSplitOptions.RemoveEmptyEntries);
                for (int i = 0; i < words.Length; i++)
                {
                    if (words[i].Equals(textField))
                        counter++;
                }

                totalWords = words.Length;
                double percentageInDoc = ((double)counter / totalWords) * 100;
                double roundResult = Math.Round(percentageInDoc, 2);
                percWordsFound = roundResult.ToString() + "% Of The Words Found Match.";
                totalWordsFound = totalWords + " Words In This File.";
                matches = counter + " Matches In This Document.";
            }
        }
    }

    }

