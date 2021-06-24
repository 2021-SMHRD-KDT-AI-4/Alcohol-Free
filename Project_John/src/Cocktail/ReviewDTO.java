package Cocktail;

public class ReviewDTO {

   private String Title;
   private String Input_file;
   @SuppressWarnings("unused")
   private String Content;
   
   public ReviewDTO(String Title, String Input_file, String Content) {
      super();
      
      this.setTitle(Title);
      this.setInput_file(Input_file);
      this.Content = Content;

   }

   public String getTitle() {
      return Title;
   }

   public void setTitle(String title) {
      Title = title;
   }

   public String getInput_file() {
      return Input_file;
   }

   public void setInput_file(String input_file) {
      Input_file = input_file;
   }

   public String getContent() {
      return Content;
   }

   public void setContent(String content) {
      Content = content;
   }
   
   
}