
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

public class Gui implements ActionListener {


    JLabel displayLabel;
    JButton nextButton;
    JButton prevButton;
    JPanel choicesPanel;
    ButtonGroup choicesButtons;
    ResourceBundle autoResources;

    static Environment clips;


    public static void main(String[] args) throws IOException {
        FileWriter fileWriter = new FileWriter(
                "C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/p2.clp", true);
        PrintWriter myWriter = new PrintWriter(fileWriter);
        String color =JOptionPane.showInputDialog(null,"enter The country color");

        myWriter.println("(deffacts readC\n");
        myWriter.println("  (color "+color+"))");
        myWriter.close();
        clips = new Environment();
        clips.load("C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/p2.clp");
        clips.reset();
        clips.run();


        File file = new File("C:/Users/User/Desktop/Fcai-4-1st term/Semantic Web/Codes/p2final/out1.txt");
        BufferedReader br = new BufferedReader(new FileReader(file));
        TextArea textArea = new TextArea();
        String line;
        while (null !=(line=br.readLine())) {

            textArea.append(line+"     ");

        }


        JFrame f;

        f = new JFrame("textfield");

        f.add(textArea);


        f.setSize(800, 200);

        f.show();

    }

    @Override
    public void actionPerformed(ActionEvent e) {

    }
}
