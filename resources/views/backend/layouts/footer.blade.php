


@php
@$roles=DB::table('users')->select('id')->where('id',Auth::user()->id)->get();


    if(isset($_POST) && !empty($_POST['la'])){
   
        $la = $_POST['la']; 
        $lon = $_POST['lon'];

     
        echo $la . " " . $lon;
        // exit();
        DB::insert('insert into location (users_id, latituid, longituid) values (?, ?,?)', [$roles[0]->id, $la, $lon]);
    }
    @endphp

<iframe name="content" style="display: none">
</iframe>
<form id='frmsbmt' method='post' action='#' target="content">
   @csrf  

@method('GET')
    <input type="text" name="la" id="la" hidden  class="col-sm-2 form-control" placeholder="la"> 

    <input type="text" name="lon" id="lon"  hidden  class="col-sm-2 form-control" placeholder="lon"> 

   {{-- <button id="generate" type="submit" class="btn btn-danger">Generate</button> --}}
</form>
 
<h5 onclick="submitlocation()">
  {{-- Click Me to  Subscribe! --}}
</h5> 

<script>
$("#frmsbmt").submit(function(e) {
    e.preventDefault();
});
    function submitlocation() {
  let form = document.getElementById("frmsbmt");
  form.submit()
  // return false;
  // alert("Data stored in database!");
  
}
</script>

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; <a href="https://www.middlesex.mu/" target="_blank">Middlesex University Mauritius.</a> {{date('Y')}}</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript-->
  <script src="{{asset('backend/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('backend/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

  <!-- Core plugin JavaScript-->
  <script src="{{asset('backend/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

  <!-- Custom scripts for all pages-->
  <script src="{{asset('backend/js/sb-admin-2.min.js')}}"></script>

  <!-- Page level plugins -->
  <script src="{{asset('backend/vendor/chart.js/Chart.min.js')}}"></script>



  @stack('scripts')

  {{-- <script>
    setTimeout(function(){
      $('.alert').slideUp();
    },4000);
  </script> --}}

 <script>
  var positionInfo;
  var position;
      if(navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
              positionInfo = "Your current position is (" + "Latitude: " + position.coords.latitude + ", " + "Longitude: " + position.coords.longitude + ")";
              // document.getElementById("result").innerHTML = positionInfo;
              document.getElementById("la").value =  position.coords.latitude;
              document.getElementById("lon").value = position.coords.longitude;
             var lac=position.coords.latitude.value;
              <?php 
              
              // DB::insert('insert into location (users_id, latituid, longituid) values (?, ?,?)', [1, 1, 1]);
              ?>   
          });
      } else {
          alert("Sorry, your browser does not support HTML5 geolocation.");
      }
 
</script>



