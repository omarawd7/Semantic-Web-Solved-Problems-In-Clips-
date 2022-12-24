
import net.sf.clipsrules.jni.*;

import javax.swing.*;
import javax.swing.border.*;
import javax.swing.table.*;
import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.*;
import java.text.BreakIterator;
import java.util.List;

public class GUI implements ActionListener {


    JLabel displayLabel;
    JButton nextButton;
    JButton prevButton;
    JPanel choicesPanel;
    ButtonGroup choicesButtons;
    ResourceBundle autoResources;



    public static void main(String[] args) throws IOException {

        FileWriter fileWriter = new FileWriter(
                "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p3final/in.txt");
        PrintWriter myWriter = new PrintWriter(fileWriter);

        Environment clips;
        clips = new Environment();

              String user1 =JOptionPane.showInputDialog("1","enter The Input Data");
              String user2 =JOptionPane.showInputDialog("2","enter The Input Data");
              String user3 =JOptionPane.showInputDialog("3","enter The Input Data");
              String user4 =JOptionPane.showInputDialog("4","enter The Input Data");

            myWriter.println(user1);
            myWriter.println(user2);
           myWriter.println(user3);
           myWriter.println(user4);

        myWriter.close();

          clips.load("C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p3final/p3.clp");
           clips.reset();
           clips.run();
        File file = new File("C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p3final/out1.txt");
        BufferedReader br = new BufferedReader(new FileReader(file));
        user1 = br.readLine();
        user2 = br.readLine();
        user3 = br.readLine();
        user4 = br.readLine();

        TextArea textArea = new TextArea();
        TextArea textArea1 = new TextArea();
        TextArea textArea2 = new TextArea();
        TextArea textArea3 = new TextArea();

        JFrame f;

        f = new JFrame("textfield");

        JTextArea jt;

        textArea.append(user1+"     ");
        textArea.append(user2+"     ");
        textArea.append(user3+"     ");
        textArea.append(user4+"     ");

        f.add(textArea);


        f.setSize(700, 300);

        f.show();

    }

    @Override
    public void actionPerformed(ActionEvent e) {

    }
}
