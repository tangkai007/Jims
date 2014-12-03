<%@ tag language="java" pageEncoding="UTF-8"%>
<div id="add-dialog-message" class="modal fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
   <div class="modal-dialog"> 
    <div class="modal-content"> 
     <div class="modal-header"> 
      <button type="button" class="close" data-dismiss="modal"> <span aria-hidden="true">&times;</span><span class="sr-only">x</span> </button> 
      <h5 class="modal-title" id="myModalLabel"> <i class="icon-plus-sign"></i>&nbsp;添加操作员信息 </h5> 
     </div> 
     <div class="modal-body"> 
      <form id="add-form-dialog" class="form-horizontal" role="form">
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="form-field-1"> 姓名： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="username" name="username" class="col-xs-8" /> 
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="form-field-1"> 密码： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="password" name="password" class="col-xs-8" /> 
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="form-field-1"> 角色： </label> 
        <div class="col-sm-9">
          <div class="inline">
            <input type="checkbox" id="role" name="role" class="ace" /><span class="lbl">操作员</span> 
          </div>
          <div class="inline">
            <input type="checkbox" id="role-all" name="role" class="ace" /><span class="lbl">管理员</span>
          </div> 
        </div> 
       </div> 
      </form> 
     </div>
     <div class="modal-footer"> 
      <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" id="cancel"><i class="icon-remove bigger-110"></i>取消</button> 
      <button type="button" class="btn btn-primary btn-sm" id="ok"><i class="icon-ok bigger-110"></i>确定</button> 
     </div> 
    </div> 
   </div>
   <script type="text/javascript">
   
   //1.  var array = new Array();
   //2. 往数组添加数据：
   //array.push($(this).val());
   //3.数组以“,”分隔输出：
   //alert(array.join(','));
   
   jQuery(function($) {
	   $("#role-all").on('click' , function(){
		   var that = this;
		   $("input[name=role]").each(function(){
			   this.checked = that.checked;
			   jQuery("#role").attr("checked", this.checked);
		   });
	   });
	   
 	   $("#cancel").on("click",function(){//取消事件
 	 	   location.reload();
 	 	});
	 	
 	   $("#close").on("click",function(){//x事件
 		  location.reload();
  	 	});
   });
   </script>
  </div> 
<!-- #add-dialog-message --> 