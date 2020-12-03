 
    

 Add-Type -Path "C:\Oracle\product\12.2.0\client_1\odp.net\managed\common\Oracle.ManagedDataAccess.dll"
$username ='xx'
$password = "yy"
$datasource = "test"
$query = "select cde_x from t_xy "
$connectionString = 'User Id=' + $username + ';Password=' + $password + ';Data Source=' + $datasource
$connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection($connectionString)
$connection.open()
$command=$connection.CreateCommand()
$command.CommandText=$query
$reader=$command.ExecuteReader()
while ($reader.Read()) {
 $reader.GetDecimal(0)
 $reader.GetDecimal(1)
 $reader.GetString(2)
 }

 $connection.Close()

