class chapter{
  final String chaptername;
  chapter(this.chaptername);
}
class Allchapter{
  static List<chapter> getchapter(String subject){
    if (subject=='Maths'){
      return[
        chapter('Probability'),
        chapter('Integration'),
      ];
    }else if (subject=='Physics'){
      return [
        chapter('Motion'),
        chapter('Modern Physics'),
      ];
    }else if (subject=='Chemistry'){
      return [
        chapter('Chemical Kinetics'),
        chapter('Thermodynamics'),
      ];
    }else{
      return[];
    }  
  }  
}
