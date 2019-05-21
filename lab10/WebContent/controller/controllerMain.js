$(document).on("click","#btnLogin",function()
{
	var result = isValidFormLogin();
	if(result=="true")
		{
		$("#formLogin").submit();
		}
	else
		{
		$("#divStsMsgLogin").html(result);
		}

}		
);

//---items-------
$(document).on("click","#btnSave", function()
{
	var result = isValidFormItem();
	if(result=="true")
		{$("#formItems").submit();}
	else
		{$("#diviStsMsgItem").html(result);}
	});

//--Edit---
$(document).on("click", "#btnEdit", function()
{
	$("#hidMode").val("update");
	$("#hidID").val($(this).attr("param"));
	$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
	$("#txtItemDecs").val($(this).closest("tr").find('td:eq(2)').text());
	}	
);

$(document).on("click", "#btnRemove", function()
		{
	$("#hidMode").val("remove");
	$("#hidID").val($(this).attr("param"));
	var res = cofirm("Are you sure?");
	if(res == true){
		$("#formItems").submit();
	}
		});