package beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;
public class ImageForm extends org.apache.struts.action.ActionForm {
    
    private FormFile image;

    /**
     * @return the image
     */
    public FormFile getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(FormFile image) {
        this.image = image;
    }
}
