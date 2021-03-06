</div><!-- End page -->


<!-- Vendor js -->
<script src="assets/js/vendor.min.js"></script>

<!-- third party js -->
<script src="assets/libs/datatables/jquery.dataTables.min.js"></script>
<script src="assets/libs/datatables/dataTables.bootstrap4.js"></script>
<script src="assets/libs/datatables/dataTables.responsive.min.js"></script>
<script src="assets/libs/datatables/responsive.bootstrap4.min.js"></script>
<script src="assets/libs/datatables/dataTables.buttons.min.js"></script>
<script src="assets/libs/datatables/buttons.bootstrap4.min.js"></script>
<script src="assets/libs/datatables/buttons.html5.min.js"></script>
<script src="assets/libs/datatables/buttons.flash.min.js"></script>
<script src="assets/libs/datatables/buttons.print.min.js"></script>
<script src="assets/libs/datatables/dataTables.keyTable.min.js"></script>
<script src="assets/libs/datatables/dataTables.select.min.js"></script>
<script src="assets/libs/pdfmake/vfs_fonts.js"></script>
<!-- third party js ends -->

<!-- Datatables init -->
<script src="assets/js/pages/datatables.init.js"></script>

<!-- App js -->
<script src="assets/js/app.min.js?v=<?echo time();?>"></script>
<script>
    $("#txtvendor").keyup(function(){
                    if($("#txtvendor").val() == ""){
                        $("#vid").val('');
                        $("#suggesstion-box").hide();
                    }else{
                        $.ajax({
                            type: "POST",
                            url: "fetchvendor",
                            data:'keyword='+$(this).val(),
                            success: function(data){
                                console.log(data);
                                $("#suggesstion-box").show();
                                $("#suggesstion-box").html(data);
                                $("#txtvendor").css("background","#FFF");
                            },
                            error:function(xhr){
                                console.log(xhr.responseText);
                            }
                            
                        });
                    }
                });
                function selectCustomer(name,id) {
                    $("#txtvendor").val(name);
                    $("#vid").val(id);
                    $("#suggesstion-box").hide();
                }
</script>
</body>
</html>