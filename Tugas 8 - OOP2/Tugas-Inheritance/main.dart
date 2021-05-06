import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  ArTitan art = ArTitan();
  AtTitan att = AtTitan();
  BsTitan bst = BsTitan();
  Human hum = Human();

  art.powerpoint = 8;
  att.powerpoint = 9;
  bst.powerpoint = 7;
  hum.powerpoint = 6;

  print("PowerPoint Armor Titan: ${art.powerpoint}");
  print("PowerPoint Attack Titan: ${att.powerpoint}");
  print("PowerPoint Beast Titan: ${bst.powerpoint}");
  print("PowerPoint Human: ${hum.powerpoint}");

  print("Sifat Dari Armor Titan: " + art.terjang());
  print("Sifat Dari Attack Titan: " + att.punch());
  print("Sifat Dari Beast Titan: " + bst.lempar());
  print("Sifat Dari Human: " + hum.killAllTitan());
}
