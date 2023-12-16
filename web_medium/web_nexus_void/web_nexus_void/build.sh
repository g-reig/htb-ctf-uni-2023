dotnet restore "Nexus_Void/Nexus_Void.csproj"

dotnet tool install --global dotnet-ef --version 7.0.0

PATH="$PATH:$HOME/.dotnet/tools"

cd Nexus_Void

dotnet ef database update

dotnet build "Nexus_Void.csproj" -c Release -o app/build

dotnet publish "Nexus_Void.csproj" -c Release -o app/publish /p:UseAppHost=false

echo "top -bn1 | grep 'Cpu(s)' | awk '{print \$2 + \$4}' | tr -d '\\n'" > /tmp/cpu.sh

echo "free -m | awk 'NR==2{printf \"%sMB\", \$3}'" > /tmp/mem.sh

echo "df -h | awk '\$NF==\"/\"{printf \"%d/%dGB (%s)\", \$3, \$2, \$5}'" > /tmp/disk.sh
