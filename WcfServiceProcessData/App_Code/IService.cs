using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService" in both code and config file together.
[ServiceContract]
public interface IService
{

	[OperationContract]


DataSet getTableProcedurce(String nameprocedurce, Dictionary<String, object> values);[OperationContract]

DataSet getTable(String SQL);[OperationContract]

int ExecuteSQL(string SQL);[OperationContract]

int ExecuteProcedurce(String nameprocedurce, Dictionary<String, object> values);

	// TODO: Add your service operations here
}

// Use a data contract as illustrated in the sample below to add composite types to service operations.
