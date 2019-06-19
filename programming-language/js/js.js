1.设置radio的选中值
	$(":radio[name='nDeptType'][value='" + 1 + "']").prop("checked", "checked");

2.获取radio的选中值
	var nSex = $('input[name="nSex"]:checked').val();
	
3.radio的选中事件
	$("input:radio[name='nDeptType']").on('click', function (event) {
    	//设置全局变量的值
    	g_dept_type = $(this).val();
	});		


4.	循环遍历搜索条件
	$("#doSearch").button().click(function (event) {
    var url = "list.htm?token=brk";
    var inputs = $(".search-userArea input");
    var sels = $(".search-userArea select");
    for (var i = 0; i < inputs.length; i++) {
        var input = $(inputs[i]);
        var id = input.attr("id");
        var val = jsTrim(input.val());
        if (val != "") {
            url += "&" + id + "=" + val;
        }
    }
    for (var i = 0; i < sels.length; i++) {
        var sel = $(sels[i]);
        var id = sel.attr("id");
        var val = sel.val();
        if (val != "-1") {
            url += "&" + id + "=" + val;
        }
    }
    url = encodeURI(url).replace(/#/g, "%23");
    window.location.href = url;
});