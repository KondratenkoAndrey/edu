//
// Program.cs
//
// Author:
//       Andrey Kondratenko <>
//
// Copyright (c) 2018 Andrey Kondratenko
using System;

namespace Application
{
    class MainClass
    {

        public static string GetFileExtension(string fileName)
        {
            string[] parts = fileName.Split('.');
            if (parts.Length < 2)
            {
                throw new ArgumentException();
            }

            string extension = parts[parts.Length - 1];
            if (extension.Length < 1)
            {
                throw new ArgumentException();
            }

            return extension.ToLower();
        }

        public static void Main(string[] args)
        {
            string[] documents =
            {
                "document.xml",
                "document.TXT",
                "document.doc",
                "document.pdf",
                "document.",
                "document",
                ""
            };

            foreach (var document in documents)
            {
                string fileType = "";
                try
                {
                    fileType = GetFileExtension(document);
                }
                catch
                {
                    Console.WriteLine("Invalid file name: \"{0}\"", document);
                    continue;
                }

                switch (fileType)
                {
                    case "xml":
                        XMLHandler xmlHandler = new XMLHandler();
                        xmlHandler.Create();
                        xmlHandler.Open();
                        xmlHandler.Change();
                        xmlHandler.Save();
                        break;

                    case "txt":
                        TXTHandler txtHandler = new TXTHandler();
                        txtHandler.Create();
                        txtHandler.Open();
                        txtHandler.Change();
                        txtHandler.Save();
                        break;

                    case "doc":
                        DOCHandler docHandler = new DOCHandler();
                        docHandler.Create();
                        docHandler.Open();
                        docHandler.Change();
                        docHandler.Save();
                        break;

                    default:
                        Console.WriteLine("{0} files doesn't supported", fileType);
                        break;
                }
            }

        }
    }
}
