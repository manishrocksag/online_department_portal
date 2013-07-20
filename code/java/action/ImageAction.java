
package action;

import beans.ImageForm;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;
public class ImageAction extends org.apache.struts.action.Action {
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception 
    {
        try
        {
         
         ImageForm fb=(ImageForm)form;
          FormFile ffile=fb.getImage();
          String filename=ffile.getFileName();
          String filestring[]=filename.split("\\.");
          String ext=filestring[filestring.length-1];
          String ext1=filestring[0];
          String id=ext1+"."+ext;
          System.out.println(" file name "+filename);
          String path= getServlet().getServletContext().getRealPath(File.separator)+"ProjectImage";

           if(filename!=null)
           {
               File f=new File(path, id);

               if(!f.exists())
               {
                   FileOutputStream fout=new FileOutputStream(f);
                   fout.write(ffile.getFileData());
                   fout.close();
               }
           }
           request.setAttribute("filename","ProjectImage//"+id);
        }
        catch (Exception e)
        {
            System.out.println(" Image Action Exception "+e.getMessage());
        }
        
        return mapping.findForward("showdata");
    }
}
