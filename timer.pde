import com.dhchoi.CountdownTimer;
import com.dhchoi.CountdownTimerService;

CountdownTimer timer ;
CountdownTimer timer2 ;
String timerReturn = "";

void tempo5m(){
  timer = CountdownTimerService.getNewCountdownTimer(this).configure(600, 60000).start();
}
void tempo3m(){
  timer2 = CountdownTimerService.getNewCountdownTimer(this).configure(600, 30000).start();
}

void onTrickEvent(CountdownTimer t, long timeLeftUntilFinish){
  timerReturn = "Tempo Restante" + timeLeftUntilFinish +"ms";
}

void onFinishEvent(CountdownTimer t){
  tela = 6;
}

void pontuacao(){
 PImage img1 = loadImage("sunset-retro.jpg");
 background(img1);
 pushMatrix();
  textAlign(CENTER,CENTER);
  textSize(52);
  text("Sua Pontuação foi:"+ score,400,300);
  popMatrix();
}

void relogio(){
text(timerReturn, 10, height - 0);
}
