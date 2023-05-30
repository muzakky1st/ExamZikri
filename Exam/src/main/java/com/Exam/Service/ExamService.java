package com.Exam.Service;

import org.springframework.stereotype.Service;

import java.io.*;

@Service
public class ExamService {

    public String getBank (String bankCode){
        try(BufferedReader in = new BufferedReader(new FileReader("D:\\Data alert.txt"))) {
            String str;
            String response;
            StringWriter stringWriter = new StringWriter();
            PrintWriter writer = new PrintWriter(stringWriter, true);
            writer.println("Selamat Siang Rekan Bank " + bankCode);
            writer.println("Mohon bantuan Sign on pada envi berikut :");
            writer.println("");
            while ((str = in.readLine()) != null) {
                String[] dataAlert = str.split(";");
                if(dataAlert[0].equalsIgnoreCase(bankCode)){
                    writer.println("Envi "+dataAlert[1]+" port "+dataAlert[2]+" terpantau "+dataAlert[4]);
                }
            }
            response = stringWriter.toString();
            return response;
        }
        catch (IOException e) {
            System.out.println("File Read Error");
            return "File Read Error";
        }
    }
}
