<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            
                <div class="x_title">
                    <h2 class="text-center">ลงทะเบียนร้านค้าใหม่</h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <br/>
                    <form class="form-horizontal" method="post" enctype="multipart/form-data">
                    <fieldset>
                        <!-- ชื่อสินค้า-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">ชื่อร้านค้า*</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="name" name="namestore" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" >รูปร้านค้า</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="file" accept="image/png, image/jpeg , image/jpg" name="input-file-preview" class="form-control" />
                            </div>
                        </div>


                         <!-- ราคาสินค้า-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">เบอร์โทรศัพท์</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="telephone" type="text" placeholder="เบอร์โทรศัพท์" class="form-control">
                            </div>
                        </div>

                         <!-- Message body -->
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ที่อยู่</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea class="form-control" name="address" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" rows="3"></textarea>
                            </div>
                        </div>

                         <!-- ราคาสินค้า-->
                         <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">อำเภอ</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="city" name="city" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">จังหวัด</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="state" name="state" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ประเทศ</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="country" name="country" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">รหัสไปรษณีย์</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="zip" name="zip" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        
                        &nbsp
                        <h4 class="text-center">บัญชีของร้านค้า</h4>
                        &nbsp

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ชื่อบัญชีร้านค้า</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input  name="nameAccountStore" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">เลขบัญชีร้านค้า</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="numberStorebank" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">ธนาคารร้านค้า</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="namebank" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        &nbsp
                        <h4 class="text-center">รายละเอียดร้านค้า</h4>
                        &nbsp
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="message">ประวัติร้านค้า</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <textarea class="form-control" id="message" name="storytextstore" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" rows="5"></textarea>
                            </div>
                        </div>
                        &nbsp
                        <h4 class="text-center">กำหนดรหัสผ่านเข้าสู่ระบบของร้านค้า</h4>
                        &nbsp
                         <!-- ราคาสินค้า-->
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Email</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="email" name="email" type="text" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">Password</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="password" name="password" type="password" placeholder="ตัวอักษรภาษาไทยหรือภาษาอังกฤษเท่านั้น" class="form-control">
                            </div>
                        </div>
                        &nbsp
                        &nbsp
                        <!-- Form actions -->
                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <input name="submitinsertstore" type="submit" class="btn btn-primary btn-lg" value="ส่งข้อมูลสินค้า">
                            </div>
                        </div>
                    </fieldset>
                </form>
                <?php include "CodeBack/addstore.php"; ?>
            </div>
        </div>
    </div> <!--col-md-12 col-sm-12 col-xs-12-->
</div><!--row-->
<div class="clearfix"></div>