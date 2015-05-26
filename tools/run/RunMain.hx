using StringTools;

class RunMain
{
   public static function main()
   {
      var arguments = Sys.args();

      if (arguments.length > 0) 
      {
         // When the command-line tools are called from haxelib, 
         // the last argument is the user directory and the
         // path to acadnme is the current working directory 
         arguments.pop();
      }

      var system = Sys.systemName();
      var sys = system.toLowerCase().substr(0,3);
      var exe:String = switch(sys)
      {
         case "win" : ".\\bin\\Windows\\Acadnme\\Acadnme.exe";
         case "lin" : "./bin/Linux/Acadnme/Acadnme";
         case "mac" : "./bin/Mac/Acadnme.app/Contents/MacOS/Acadnme";
         default:
            throw 'Unkown host system $system';
      }

      if (!exe.endsWith(".exe"))
         Sys.command("chmod", ["755", exe]);

      Sys.command(exe, arguments);
   }
}

