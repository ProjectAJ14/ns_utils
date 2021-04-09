// Project imports:
import '../src.dart';

class NSFLogTag {
  static const String nsf = 'NSF';
}

void nsuLogs(
  Object object, {
  String tag = NSFLogTag.nsf,
}) =>
    logMessage('$object', tag);

///print logs even if the content more then log buffer size
///
void logMessage(String message, String tag) {
  if (!NSUtils.instance.printLogs) return;
  int maxLogSize = 1000;
  for (int i = 0; i <= message.length / maxLogSize; i++) {
    int start = i * maxLogSize;
    int end = (i + 1) * maxLogSize;
    end = end > message.length ? message.length : end;
    print("$tag : ${message.substring(start, end)}");
  }
  print('\n');
}
