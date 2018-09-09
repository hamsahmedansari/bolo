<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="FreeStuff.aspx.cs" Inherits="Bolo.FreeStuff" %>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="headchild">

    <meta  property="og:title" content="Free Stuff"/>
    <meta property='og:type' content='article' />
    <meta  property="og:image" content="https://bolo.com.pk/img/facebookicon2.jpg"/>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
     <script>
        $(document).ready(function () {
            //$(".alert_outer_box").fadeOut(0);
            $(".alert_box_close,.alert_outer_box").click(function () {
                $("div.alert_outer_box").fadeOut(500);
            });
        });
    </script>
    <asp:Panel runat="server" ID="pnlAlert" Visible="false">
        <div class="alert_outer_box" style="position:fixed;width:100%;height:100%;top:0px;z-index:999;">
        <div style="position:absolute;width:100%;height:100%;background: rgba(0, 0, 0, 0.53);">
            <div class="alert alert-success alert-dismissable" style="margin: auto;margin-top:  auto;margin-bottom:  auto;top: 44%;POSITION:  fixed;width:  100%;font-size:  30px;text-align:  center;border-radius: 0px;padding:  30px;">
                <a href="#" class="close alert_box_close" aria-label="close" style="/* font-size:20px; */font-size: 30px;">×</a>
                <strong>Thank You!</strong> Your Form Has Been Submitted Successfully.
            </div>
        </div>
    </div>
    </asp:Panel>
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="col-12 text-center">
        </div>

        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo" style="">
                        Free Stuff
                    </div>
                </div>
            </div>

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="border: 1px solid #ccc;">
                <div class="row text-center">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 " style="background-color:#5cb85c;color:#fff;">
                        <div class="row container-fluid">
                            <h3>
                                YOUR SMALL CONTRIBUTION - MAKE POOR PEOPLES HAPPY
                            </h3>
                        </div>
                        <h5>
                            "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well
                        </h5>
                        <p style="text-align:left;padding:20px;">
                            Donate ClothesClothing in all sizes and styles for women, men, and children<br/>
                            Donate Clothing accessories – purses, belts, ties, wallets<br/>
                            Donate Dresses – wedding dress, prom dress, formalwear<br/>
                            Donate Bedding, curtains, drapes, linens<br/>
                            Donate Household itemssmall appliances, blenders, toasters, dishes, glassware, housewares, and home décor<br/>
                            Donate Bookshardbacks, paperbacks, textbooks<br/>
                            Donate Electronics–  CD players, DVD players, radios, VCRs, iPods, cameras<br/>
                            Donate Toys– skates, games, bikes<br/>
                            Donate Jewelry &amp; watches<br/>
                            Donate Antiques &amp; collectibles<br/>
                            Donate Records, tapes, CD’s &amp; DVD’s<br/>
                            Donate Sports equipment<br/>
                            Donate Shoes<br/>
                            Donate Office supplies<br/>

                            Donate Computer equipmentcomputers, CPU’s, monitors, printers, towers, PCs<br/>
                            Donate Large Furniture – couch, sectionals, dining room tables, desks<br/>
                            Donate Stuffed Animals<br/>
                            Donate Building materials<br/>
                            Donate Baby items<br/>
                            Donate Exercise equipmentstationary bikes, treadmills, universal sets, weights<br/>
                            Donate Large applianceswashers, dryers, refrigerators, stoves<br/>
                        </p>
                    </div>
                </div>
            </div>

            <div class="row container-fluid">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 bg-primary" style="margin-top:20px;">
                    <div class="row container-fluid text-center">
                        <h3>
                            Gallery
                        </h3>
                    </div>
                    <div class="row container-fluid text-center content_809080">
                        <img src="../img/a12.jpg" alt="Alternate Text" class="img img-responsive custom_img_90909090909090" style="width:200px ;padding:10px" data-toggle="modal" data-target="#myModal" />
                        <img src="../img/a12.jpg" alt="Alternate Text" class="img img-responsive custom_img_90909090909090" style="width:200px ;padding:10px" data-toggle="modal" data-target="#myModal" />
                        <img src="../img/a12.jpg" alt="Alternate Text" class="img img-responsive custom_img_90909090909090" style="width:200px ;padding:10px" data-toggle="modal" data-target="#myModal" />
                    </div>
                    <!-- Modal -->
                    <div id="myModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">
                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Tittle</h4>
                                </div>
                                <div class="modal-body">
                                    <img src="#" alt="Alternate Text" class="img img-responsive ramdom_img_jobs"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row container-fluid">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 bg-primary" style="margin-top:20px;">
                    <div class="row container-fluid text-center">
                        <h3>
                            Free Stuff
                        </h3>
                    </div>


                    <div style="margin-bottom:20px;">
                        <div class="form-group">
                            <label>Doner Name</label>
                            <asp:TextBox ID="txtDonarName" runat="server" Type="text" CssClass="form-control" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>City</label>
                           
                            <asp:DropDownList ID="DropDownListCity" runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">--Select--</asp:ListItem>
                                <asp:ListItem value="405">Islamabad</asp:ListItem>
                                        <asp:ListItem value="406">Karachi</asp:ListItem>
                                        <asp:ListItem value="407">Lahore</asp:ListItem>
                                        <asp:ListItem value="285">Peshawar</asp:ListItem>
                                        <asp:ListItem value="299">Quetta</asp:ListItem>
                                        <asp:ListItem value="310">Rawalpindi</asp:ListItem>

                                     <asp:ListItem value="1">Abbotabad</asp:ListItem>
                                        <asp:ListItem value="2">Abdul hakim</asp:ListItem>
                                        <asp:ListItem value="3">Adda jahan khan</asp:ListItem>
                                        <asp:ListItem value="4">Adda shaiwala</asp:ListItem>
                                        <asp:ListItem value="5">Akhora khattak</asp:ListItem>
                                        <asp:ListItem value="6">Ali chak</asp:ListItem>
                                        <asp:ListItem value="7">Allahabad</asp:ListItem>
                                        <asp:ListItem value="8">Amangarh</asp:ListItem>
                                        <asp:ListItem value="9">Arif wala</asp:ListItem>
                                        <asp:ListItem value="10">Arifwala</asp:ListItem>
                                        <asp:ListItem value="11">Attock</asp:ListItem>
                                        <asp:ListItem value="12">Babri banda</asp:ListItem>
                                        <asp:ListItem value="13">Badin</asp:ListItem>
                                        <asp:ListItem value="14">Bahawalnagar</asp:ListItem>
                                        <asp:ListItem value="15">Bahawalpur</asp:ListItem>
                                        <asp:ListItem value="16">Balakot</asp:ListItem>
                                        <asp:ListItem value="17">Bannu</asp:ListItem>
                                        <asp:ListItem value="18">Barbar loi</asp:ListItem>
                                        <asp:ListItem value="19">Baroute</asp:ListItem>
                                        <asp:ListItem value="20">Bat khela</asp:ListItem>
                                        <asp:ListItem value="21">Bhai pheru</asp:ListItem>
                                        <asp:ListItem value="22">Bhakkar</asp:ListItem>
                                        <asp:ListItem value="23">Bhalwal</asp:ListItem>
                                        <asp:ListItem value="24">Bhan saeedabad</asp:ListItem>
                                        <asp:ListItem value="25">Bhera</asp:ListItem>
                                        <asp:ListItem value="26">Bhimbar</asp:ListItem>
                                        <asp:ListItem value="27">Bhirya road</asp:ListItem>
                                        <asp:ListItem value="28">Bhuawana</asp:ListItem>
                                        <asp:ListItem value="29">Blitang</asp:ListItem>
                                        <asp:ListItem value="30">Buchay key</asp:ListItem>
                                        <asp:ListItem value="31">Burewala</asp:ListItem>
                                        <asp:ListItem value="32">Chacklala</asp:ListItem>
                                        <asp:ListItem value="33">Chaininda</asp:ListItem>
                                        <asp:ListItem value="34">Chak 4 b c</asp:ListItem>
                                        <asp:ListItem value="35">Chak 46</asp:ListItem>
                                        <asp:ListItem value="36">Chak jamal</asp:ListItem>
                                        <asp:ListItem value="37">Chak jhumra</asp:ListItem>
                                        <asp:ListItem value="38">Chak sawara</asp:ListItem>
                                        <asp:ListItem value="39">Chak sheza</asp:ListItem>
                                        <asp:ListItem value="40">Chakwal</asp:ListItem>
                                        <asp:ListItem value="41">Charsada</asp:ListItem>
                                        <asp:ListItem value="42">Chashma</asp:ListItem>
                                        <asp:ListItem value="43">Chawinda</asp:ListItem>
                                        <asp:ListItem value="44">Chicha watni</asp:ListItem>
                                        <asp:ListItem value="45">Chiniot</asp:ListItem>
                                        <asp:ListItem value="46">Chishtian</asp:ListItem>
                                        <asp:ListItem value="402">Chitral</asp:ListItem>
                                        <asp:ListItem value="47">Chohar jamali</asp:ListItem>
                                        <asp:ListItem value="48">Choppar hatta</asp:ListItem>
                                        <asp:ListItem value="49">Chowha saidan shah</asp:ListItem>
                                        <asp:ListItem value="50">Chowk azam</asp:ListItem>
                                        <asp:ListItem value="51">Chowk mailta</asp:ListItem>
                                        <asp:ListItem value="52">Chowk munda</asp:ListItem>
                                        <asp:ListItem value="53">Chunian</asp:ListItem>
                                        <asp:ListItem value="54">Dadakhel</asp:ListItem>
                                        <asp:ListItem value="55">Dadu</asp:ListItem>
                                        <asp:ListItem value="56">Daharki</asp:ListItem>
                                        <asp:ListItem value="57">Dandot</asp:ListItem>
                                        <asp:ListItem value="58">Dargai</asp:ListItem>
                                        <asp:ListItem value="59">Darya khan</asp:ListItem>
                                        <asp:ListItem value="60">Daska</asp:ListItem>
                                        <asp:ListItem value="61">Daud khel</asp:ListItem>
                                        <asp:ListItem value="62">Daulat pur</asp:ListItem>
                                        <asp:ListItem value="63">Daur</asp:ListItem>
                                        <asp:ListItem value="64">Deh pathaan</asp:ListItem>
                                        <asp:ListItem value="65">Depal pur</asp:ListItem>
                                        <asp:ListItem value="66">Dera ghazi khan</asp:ListItem>
                                        <asp:ListItem value="67">Dera ismail khan</asp:ListItem>
                                        <asp:ListItem value="68">Dera murad jamali</asp:ListItem>
                                        <asp:ListItem value="69">Dera nawab sahib</asp:ListItem>
                                        <asp:ListItem value="70">Dhatmal</asp:ListItem>
                                        <asp:ListItem value="71">Dhoun kal</asp:ListItem>
                                        <asp:ListItem value="72">Digri</asp:ListItem>
                                        <asp:ListItem value="73">Dijkot</asp:ListItem>
                                        <asp:ListItem value="74">Dina</asp:ListItem>
                                        <asp:ListItem value="75">Dinga</asp:ListItem>
                                        <asp:ListItem value="76">Doaaba</asp:ListItem>
                                        <asp:ListItem value="77">Doltala</asp:ListItem>
                                        <asp:ListItem value="78">Domeli</asp:ListItem>
                                        <asp:ListItem value="79">Dudial</asp:ListItem>
                                        <asp:ListItem value="80">Dunyapur</asp:ListItem>
                                        <asp:ListItem value="81">Eminabad</asp:ListItem>
                                        <asp:ListItem value="82">Estate l.m factory</asp:ListItem>
                                        <asp:ListItem value="83">Faisalabad</asp:ListItem>
                                        <asp:ListItem value="84">Farooqabad</asp:ListItem>
                                        <asp:ListItem value="85">Fateh pur</asp:ListItem>
                                        <asp:ListItem value="86">Feroz walla</asp:ListItem>
                                        <asp:ListItem value="87">Feroz watan</asp:ListItem>
                                        <asp:ListItem value="88">Feteh jhang</asp:ListItem>
                                        <asp:ListItem value="89">Fiza got</asp:ListItem>
                                        <asp:ListItem value="90">Gadoon amazai</asp:ListItem>
                                        <asp:ListItem value="91">Gaggo mandi</asp:ListItem>
                                        <asp:ListItem value="92">Gakhar mandi</asp:ListItem>
                                        <asp:ListItem value="93">Gambet</asp:ListItem>
                                        <asp:ListItem value="94">Garh maharaja</asp:ListItem>
                                        <asp:ListItem value="95">Garh more</asp:ListItem>
                                        <asp:ListItem value="96">Gari habibullah</asp:ListItem>
                                        <asp:ListItem value="97">Gari mori</asp:ListItem>
                                        <asp:ListItem value="98">Gawadar</asp:ListItem>
                                        <asp:ListItem value="99">Gharo</asp:ListItem>
                                        <asp:ListItem value="100">Ghazi</asp:ListItem>
                                        <asp:ListItem value="101">Ghotki</asp:ListItem>
                                        <asp:ListItem value="102">Gilgit</asp:ListItem>
                                        <asp:ListItem value="103">Gohar ghoushti</asp:ListItem>
                                        <asp:ListItem value="104">Gojar khan</asp:ListItem>
                                        <asp:ListItem value="105">Gojra</asp:ListItem>
                                        <asp:ListItem value="106">Goular khel</asp:ListItem>
                                        <asp:ListItem value="107">Guddu</asp:ListItem>
                                        <asp:ListItem value="108">Gujjar khan</asp:ListItem>
                                        <asp:ListItem value="109">Gujranwala</asp:ListItem>
                                        <asp:ListItem value="110">Gujrat</asp:ListItem>
                                        <asp:ListItem value="111">Hafizabad</asp:ListItem>
                                        <asp:ListItem value="112">Hala</asp:ListItem>
                                        <asp:ListItem value="113">Hangu</asp:ListItem>
                                        <asp:ListItem value="114">Hari pur</asp:ListItem>
                                        <asp:ListItem value="115">Hariwala</asp:ListItem>
                                        <asp:ListItem value="116">Haroonabad</asp:ListItem>
                                        <asp:ListItem value="117">Hasilpur</asp:ListItem>
                                        <asp:ListItem value="118">Hassan abdal</asp:ListItem>
                                        <asp:ListItem value="119">Hattar</asp:ListItem>
                                        <asp:ListItem value="120">Hattian lawrencepur</asp:ListItem>
                                        <asp:ListItem value="121">Haveli lakha</asp:ListItem>
                                        <asp:ListItem value="122">Havelian</asp:ListItem>
                                        <asp:ListItem value="123">Hayatabad</asp:ListItem>
                                        <asp:ListItem value="124">Hazro</asp:ListItem>
                                        <asp:ListItem value="125">Head marala</asp:ListItem>
                                        <asp:ListItem value="126">Hub inds estate</asp:ListItem>
                                        <asp:ListItem value="127">Hyderabad</asp:ListItem>
                                        <asp:ListItem value="128">Issa khel</asp:ListItem>
                                        <asp:ListItem value="129">Jaccobabad</asp:ListItem>
                                        <asp:ListItem value="130">Jaja abasian</asp:ListItem>
                                        <asp:ListItem value="131">Jalal pur jatan</asp:ListItem>
                                        <asp:ListItem value="132">Jalal pur priwala</asp:ListItem>
                                        <asp:ListItem value="133">Jampur</asp:ListItem>
                                        <asp:ListItem value="134">Jamrud road</asp:ListItem>
                                        <asp:ListItem value="135">Jamshoro</asp:ListItem>
                                        <asp:ListItem value="136">Jan pur</asp:ListItem>
                                        <asp:ListItem value="137">Jandanwala</asp:ListItem>
                                        <asp:ListItem value="138">Jaranwala</asp:ListItem>
                                        <asp:ListItem value="139">Jauharabad</asp:ListItem>
                                        <asp:ListItem value="140">Jehangira</asp:ListItem>
                                        <asp:ListItem value="141">Jehanian</asp:ListItem>
                                        <asp:ListItem value="142">Jehlum</asp:ListItem>
                                        <asp:ListItem value="403">Jhal Magsi</asp:ListItem>
                                        <asp:ListItem value="143">Jhand</asp:ListItem>
                                        <asp:ListItem value="144">Jhang</asp:ListItem>
                                        <asp:ListItem value="145">Jhatta bhutta</asp:ListItem>
                                        <asp:ListItem value="146">Jhelum</asp:ListItem>
                                        <asp:ListItem value="147">Jhudo</asp:ListItem>
                                        <asp:ListItem value="148">Joharabad</asp:ListItem>
                                        <asp:ListItem value="149">Kabir wala</asp:ListItem>
                                        <asp:ListItem value="150">Kacha khooh</asp:ListItem>
                                        <asp:ListItem value="151">Kahuta</asp:ListItem>
                                        <asp:ListItem value="152">Kakul</asp:ListItem>
                                        <asp:ListItem value="153">Kakur town</asp:ListItem>
                                        <asp:ListItem value="154">Kala bagh</asp:ListItem>
                                        <asp:ListItem value="155">Kala shah kaku</asp:ListItem>
                                        <asp:ListItem value="156">Kalar syedian</asp:ListItem>
                                        <asp:ListItem value="157">Kalaswala</asp:ListItem>
                                        <asp:ListItem value="158">Kallur kot</asp:ListItem>
                                        <asp:ListItem value="159">Kamalia</asp:ListItem>
                                        <asp:ListItem value="160">Kamalia musa</asp:ListItem>
                                        <asp:ListItem value="161">Kamber ali khan</asp:ListItem>
                                        <asp:ListItem value="162">Kamokey</asp:ListItem>
                                        <asp:ListItem value="163">Kamra</asp:ListItem>
                                        <asp:ListItem value="164">Kandh kot</asp:ListItem>
                                        <asp:ListItem value="165">Kandiaro</asp:ListItem>
                                        <asp:ListItem value="166">Karak</asp:ListItem>
                                        <asp:ListItem value="167">Karoor pacca</asp:ListItem>
                                        <asp:ListItem value="168">Karore lalisan</asp:ListItem>
                                        <asp:ListItem value="169">Kashmir</asp:ListItem>
                                        <asp:ListItem value="170">Kashmore</asp:ListItem>
                                        <asp:ListItem value="171">Kasur</asp:ListItem>
                                        <asp:ListItem value="172">Kazi ahmed</asp:ListItem>
                                        <asp:ListItem value="173">Khair pur</asp:ListItem>
                                        <asp:ListItem value="174">Khair pur mir</asp:ListItem>
                                        <asp:ListItem value="175">Khairpur nathan shah</asp:ListItem>
                                        <asp:ListItem value="176">Khan qah sharif</asp:ListItem>
                                        <asp:ListItem value="177">Khanbel</asp:ListItem>
                                        <asp:ListItem value="178">Khandabad</asp:ListItem>
                                        <asp:ListItem value="179">Khanewal</asp:ListItem>
                                        <asp:ListItem value="180">Khangarh</asp:ListItem>
                                        <asp:ListItem value="181">Khanqah dogran</asp:ListItem>
                                        <asp:ListItem value="182">Khanqah sharif</asp:ListItem>
                                        <asp:ListItem value="183">Kharian</asp:ListItem>
                                        <asp:ListItem value="184">Khewra</asp:ListItem>
                                        <asp:ListItem value="185">Khoski</asp:ListItem>
                                        <asp:ListItem value="186">Khurian wala</asp:ListItem>
                                        <asp:ListItem value="187">Khushab</asp:ListItem>
                                        <asp:ListItem value="188">Khushal kot</asp:ListItem>
                                        <asp:ListItem value="189">Khuzdar</asp:ListItem>
                                        <asp:ListItem value="190">Kohat</asp:ListItem>
                                        <asp:ListItem value="191">Kot addu</asp:ListItem>
                                        <asp:ListItem value="192">Kot bunglow</asp:ListItem>
                                        <asp:ListItem value="193">Kot ghulam mohd</asp:ListItem>
                                        <asp:ListItem value="194">Kot mithan</asp:ListItem>
                                        <asp:ListItem value="195">Kot radha kishan</asp:ListItem>
                                        <asp:ListItem value="196">Kotla</asp:ListItem>
                                        <asp:ListItem value="197">Kotla arab ali khan</asp:ListItem>
                                        <asp:ListItem value="198">Kotla jam</asp:ListItem>
                                        <asp:ListItem value="199">Kotla patdan</asp:ListItem>
                                        <asp:ListItem value="200">Kotli loharan</asp:ListItem>
                                        <asp:ListItem value="201">Kotri</asp:ListItem>
                                        <asp:ListItem value="202">Kumbh</asp:ListItem>
                                        <asp:ListItem value="203">Kundina</asp:ListItem>
                                        <asp:ListItem value="204">Kunjah</asp:ListItem>
                                        <asp:ListItem value="205">Kunri</asp:ListItem>
                                        <asp:ListItem value="206">Laki marwat</asp:ListItem>
                                        <asp:ListItem value="207">Lala musa</asp:ListItem>
                                        <asp:ListItem value="208">Lala rukh</asp:ListItem>
                                        <asp:ListItem value="209">Laliah</asp:ListItem>
                                        <asp:ListItem value="210">Lalshanra</asp:ListItem>
                                        <asp:ListItem value="211">Larkana</asp:ListItem>
                                        <asp:ListItem value="404">Lasbella</asp:ListItem>
                                        <asp:ListItem value="212">Lawrence pur</asp:ListItem>
                                        <asp:ListItem value="213">Layyah</asp:ListItem>
                                        <asp:ListItem value="214">Liaquat pur</asp:ListItem>
                                        <asp:ListItem value="215">Lodhran</asp:ListItem>
                                        <asp:ListItem value="216">Ludhan</asp:ListItem>
                                        <asp:ListItem value="217">Machi goth</asp:ListItem>
                                        <asp:ListItem value="218">Madina</asp:ListItem>
                                        <asp:ListItem value="219">Mailsi</asp:ListItem>
                                        <asp:ListItem value="220">Makli</asp:ListItem>
                                        <asp:ListItem value="221">Malakwal</asp:ListItem>
                                        <asp:ListItem value="222">Mamu kunjan</asp:ListItem>
                                        <asp:ListItem value="223">Mandi bahauddin</asp:ListItem>
                                        <asp:ListItem value="224">Mandra</asp:ListItem>
                                        <asp:ListItem value="225">Manga mandi</asp:ListItem>
                                        <asp:ListItem value="226">Mangal sada</asp:ListItem>
                                        <asp:ListItem value="227">Mangi</asp:ListItem>
                                        <asp:ListItem value="228">Mangla</asp:ListItem>
                                        <asp:ListItem value="229">Mangowal</asp:ListItem>
                                        <asp:ListItem value="230">Manoabad</asp:ListItem>
                                        <asp:ListItem value="231">Manshera</asp:ListItem>
                                        <asp:ListItem value="232">Mardan</asp:ListItem>
                                        <asp:ListItem value="233">Mari indus</asp:ListItem>
                                        <asp:ListItem value="234">Mastoi</asp:ListItem>
                                        <asp:ListItem value="235">Matiari</asp:ListItem>
                                        <asp:ListItem value="236">Matli</asp:ListItem>
                                        <asp:ListItem value="237">Mehar</asp:ListItem>
                                        <asp:ListItem value="238">Mehmood kot</asp:ListItem>
                                        <asp:ListItem value="239">Mehrab pur</asp:ListItem>
                                        <asp:ListItem value="240">Mian chunnu</asp:ListItem>
                                        <asp:ListItem value="241">Mian Walli</asp:ListItem>
                                        <asp:ListItem value="242">Mingora</asp:ListItem>
                                        <asp:ListItem value="243">Mir ali</asp:ListItem>
                                        <asp:ListItem value="244">Miran shah</asp:ListItem>
                                        <asp:ListItem value="245">Mirpur</asp:ListItem>
                                        <asp:ListItem value="246">Mirpur khas</asp:ListItem>
                                        <asp:ListItem value="247">Mirpur mathelo</asp:ListItem>
                                        <asp:ListItem value="248">Mohen jo daro</asp:ListItem>
                                        <asp:ListItem value="249">More kunda</asp:ListItem>
                                        <asp:ListItem value="250">Morgah</asp:ListItem>
                                        <asp:ListItem value="251">Moro</asp:ListItem>
                                        <asp:ListItem value="252">Mubarik pur</asp:ListItem>
                                        <asp:ListItem value="253">Multan</asp:ListItem>
                                        <asp:ListItem value="254">Muridkay</asp:ListItem>
                                        <asp:ListItem value="255">Murree</asp:ListItem>
                                        <asp:ListItem value="256">Musafir khana</asp:ListItem>
                                        <asp:ListItem value="257">Mustung</asp:ListItem>
                                        <asp:ListItem value="258">Muzaffarabad</asp:ListItem>
                                        <asp:ListItem value="259">Muzaffargarh</asp:ListItem>
                                        <asp:ListItem value="260">Nankana sahib</asp:ListItem>
                                        <asp:ListItem value="261">Narang mandi</asp:ListItem>
                                        <asp:ListItem value="262">Narowal</asp:ListItem>
                                        <asp:ListItem value="263">Naseerabad</asp:ListItem>
                                        <asp:ListItem value="264">Naudero</asp:ListItem>
                                        <asp:ListItem value="265">Naukot</asp:ListItem>
                                        <asp:ListItem value="266">Naukundi</asp:ListItem>
                                        <asp:ListItem value="267">Nawab shah</asp:ListItem>
                                        <asp:ListItem value="268">New saeedabad</asp:ListItem>
                                        <asp:ListItem value="269">Nilore</asp:ListItem>
                                        <asp:ListItem value="270">Noor kot</asp:ListItem>
                                        <asp:ListItem value="271">Noorpur nooranga</asp:ListItem>
                                        <asp:ListItem value="272">Nowshera</asp:ListItem>
                                        <asp:ListItem value="273">Nowshera cantt</asp:ListItem>
                                        <asp:ListItem value="274">Nowshero peroz</asp:ListItem>
                                        <asp:ListItem value="275">Okara</asp:ListItem>
                                        <asp:ListItem value="401">Other</asp:ListItem>
                                        <asp:ListItem value="276">Padidan</asp:ListItem>
                                        <asp:ListItem value="277">Pak china fertilizer</asp:ListItem>
                                        <asp:ListItem value="278">Pak pattan sharif</asp:ListItem>
                                        <asp:ListItem value="279">Panjan kisan</asp:ListItem>
                                        <asp:ListItem value="280">Panjgoor</asp:ListItem>
                                        <asp:ListItem value="281">Pannu aqil</asp:ListItem>
                                        <asp:ListItem value="282">Pasni</asp:ListItem>
                                        <asp:ListItem value="283">Pasroor</asp:ListItem>
                                        <asp:ListItem value="284">Patoki</asp:ListItem>
                                        <asp:ListItem value="286">Phagwar</asp:ListItem>
                                        <asp:ListItem value="287">Phalia</asp:ListItem>
                                        <asp:ListItem value="288">Phool nagar</asp:ListItem>
                                        <asp:ListItem value="289">Piaro goth</asp:ListItem>
                                        <asp:ListItem value="290">Pindi bhohri</asp:ListItem>
                                        <asp:ListItem value="291">Pindi dadan khan</asp:ListItem>
                                        <asp:ListItem value="292">Pindi gheb</asp:ListItem>
                                        <asp:ListItem value="293">Pir mahal</asp:ListItem>
                                        <asp:ListItem value="294">Pishin</asp:ListItem>
                                        <asp:ListItem value="295">Qalandarabad</asp:ListItem>
                                        <asp:ListItem value="296">Qasba gujrat</asp:ListItem>
                                        <asp:ListItem value="297">Qazi ahmed</asp:ListItem>
                                        <asp:ListItem value="298">Quaidabad</asp:ListItem>
                                        <asp:ListItem value="300">Rabwah</asp:ListItem>
                                        <asp:ListItem value="301">Rahimyar khan</asp:ListItem>
                                        <asp:ListItem value="302">Rahwali</asp:ListItem>
                                        <asp:ListItem value="303">Raiwand</asp:ListItem>
                                        <asp:ListItem value="304">Rajana</asp:ListItem>
                                        <asp:ListItem value="305">Rajanpur</asp:ListItem>
                                        <asp:ListItem value="306">Rangoo</asp:ListItem>
                                        <asp:ListItem value="307">Ranipur</asp:ListItem>
                                        <asp:ListItem value="308">Ratto dero</asp:ListItem>
                                        <asp:ListItem value="309">Rawala kot</asp:ListItem>
                                        <asp:ListItem value="311">Rawat</asp:ListItem>
                                        <asp:ListItem value="312">Renala khurd</asp:ListItem>
                                        <asp:ListItem value="313">Risalpur</asp:ListItem>
                                        <asp:ListItem value="314">Rohri</asp:ListItem>
                                        <asp:ListItem value="315">Sadiqabad</asp:ListItem>
                                        <asp:ListItem value="316">Sagri</asp:ListItem>
                                        <asp:ListItem value="317">Sahiwal</asp:ListItem>
                                        <asp:ListItem value="318">Saidu sharif</asp:ListItem>
                                        <asp:ListItem value="319">Sajawal</asp:ListItem>
                                        <asp:ListItem value="320">Sakrand</asp:ListItem>
                                        <asp:ListItem value="321">Samanabad</asp:ListItem>
                                        <asp:ListItem value="322">Sambrial</asp:ListItem>
                                        <asp:ListItem value="323">Samma satta</asp:ListItem>
                                        <asp:ListItem value="324">Samundri</asp:ListItem>
                                        <asp:ListItem value="325">Sanghar</asp:ListItem>
                                        <asp:ListItem value="326">Sanghi</asp:ListItem>
                                        <asp:ListItem value="327">Sangla hill</asp:ListItem>
                                        <asp:ListItem value="328">Sangote</asp:ListItem>
                                        <asp:ListItem value="329">Sanjwal</asp:ListItem>
                                        <asp:ListItem value="330">Sara e alamgir</asp:ListItem>
                                        <asp:ListItem value="331">Sara e naurang</asp:ListItem>
                                        <asp:ListItem value="332">Sargodha</asp:ListItem>
                                        <asp:ListItem value="333">Satyana bangla</asp:ListItem>
                                        <asp:ListItem value="334">Sehar baqlas</asp:ListItem>
                                        <asp:ListItem value="335">Serai alamgir</asp:ListItem>
                                        <asp:ListItem value="336">Shadiwal</asp:ListItem>
                                        <asp:ListItem value="337">Shah kot</asp:ListItem>
                                        <asp:ListItem value="338">Shahdad kot</asp:ListItem>
                                        <asp:ListItem value="339">Shahdad pur</asp:ListItem>
                                        <asp:ListItem value="340">Shahpur chakar</asp:ListItem>
                                        <asp:ListItem value="341">Shaikhupura</asp:ListItem>
                                        <asp:ListItem value="342">Shamsabad</asp:ListItem>
                                        <asp:ListItem value="343">Shankiari</asp:ListItem>
                                        <asp:ListItem value="344">Shedani sharif</asp:ListItem>
                                        <asp:ListItem value="345">Sheikhupura</asp:ListItem>
                                        <asp:ListItem value="346">Shemier</asp:ListItem>
                                        <asp:ListItem value="347">Shikar pur</asp:ListItem>
                                        <asp:ListItem value="348">Shorkot</asp:ListItem>
                                        <asp:ListItem value="349">Shujabad</asp:ListItem>
                                        <asp:ListItem value="350">Sialkot</asp:ListItem>
                                        <asp:ListItem value="351">Sibi</asp:ListItem>
                                        <asp:ListItem value="352">Sihala</asp:ListItem>
                                        <asp:ListItem value="353">Sikandarabad</asp:ListItem>
                                        <asp:ListItem value="354">Silanwala</asp:ListItem>
                                        <asp:ListItem value="355">Sita road</asp:ListItem>
                                        <asp:ListItem value="356">Skardu</asp:ListItem>
                                        <asp:ListItem value="357">Sohawa district daska</asp:ListItem>
                                        <asp:ListItem value="358">Sohawa district jelum</asp:ListItem>
                                        <asp:ListItem value="359">Sukkur</asp:ListItem>
                                        <asp:ListItem value="360">Swabi</asp:ListItem>
                                        <asp:ListItem value="361">Swatmingora</asp:ListItem>
                                        <asp:ListItem value="362">Takhtbai</asp:ListItem>
                                        <asp:ListItem value="363">Talagang</asp:ListItem>
                                        <asp:ListItem value="364">Talamba</asp:ListItem>
                                        <asp:ListItem value="365">Talhur</asp:ListItem>
                                        <asp:ListItem value="366">Tando adam</asp:ListItem>
                                        <asp:ListItem value="367">Tando allahyar</asp:ListItem>
                                        <asp:ListItem value="368">Tando jam</asp:ListItem>
                                        <asp:ListItem value="369">Tando mohd khan</asp:ListItem>
                                        <asp:ListItem value="370">Tank</asp:ListItem>
                                        <asp:ListItem value="371">Tarbela</asp:ListItem>
                                        <asp:ListItem value="372">Tarmatan</asp:ListItem>
                                        <asp:ListItem value="373">Taunsa sharif</asp:ListItem>
                                        <asp:ListItem value="374">Taxila</asp:ListItem>
                                        <asp:ListItem value="375">Tharo shah</asp:ListItem>
                                        <asp:ListItem value="376">Thatta</asp:ListItem>
                                        <asp:ListItem value="377">Theing jattan more</asp:ListItem>
                                        <asp:ListItem value="378">Thull</asp:ListItem>
                                        <asp:ListItem value="379">Tibba sultanpur</asp:ListItem>
                                        <asp:ListItem value="380">Tobatek singh</asp:ListItem>
                                        <asp:ListItem value="381">Topi</asp:ListItem>
                                        <asp:ListItem value="382">Toru</asp:ListItem>
                                        <asp:ListItem value="383">Trinda mohd pannah</asp:ListItem>
                                        <asp:ListItem value="384">Turbat</asp:ListItem>
                                        <asp:ListItem value="385">Ubaro</asp:ListItem>
                                        <asp:ListItem value="386">Ugoki</asp:ListItem>
                                        <asp:ListItem value="387">Ukba</asp:ListItem>
                                        <asp:ListItem value="388">Umar kot</asp:ListItem>
                                        <asp:ListItem value="389">Upper deval</asp:ListItem>
                                        <asp:ListItem value="390">Usta Mohammad</asp:ListItem>
                                        <asp:ListItem value="391">Vehari</asp:ListItem>
                                        <asp:ListItem value="392">Village Sunder</asp:ListItem>
                                        <asp:ListItem value="393">Wah cantt</asp:ListItem>
                                        <asp:ListItem value="394">Wahi hassain</asp:ListItem>
                                        <asp:ListItem value="395">Wan radha ram</asp:ListItem>
                                        <asp:ListItem value="396">Warah</asp:ListItem>
                                        <asp:ListItem value="397">Warburton</asp:ListItem>
                                        <asp:ListItem value="398">Wazirabad</asp:ListItem>
                                        <asp:ListItem value="399">Yazman mandi</asp:ListItem>
                                        <asp:ListItem value="400">Zahir pir</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label> Contact</label>
                            <asp:TextBox runat="server"  ID="txtContactNo" MaxLength="15" class="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                            <asp:Label runat="server" ID="lblInvalidContact" Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                        </div>
                        <div class="form-group">
                            <label>Things Name</label>
                            <asp:TextBox runat="server" TextMode="MultiLine"  ID="txtThingsName" class="form-control" Rows="2" Style="resize:none" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Pickup location</label>
                            <asp:TextBox runat="server" TextMode="MultiLine"  ID="txtPickUpLocation" class="form-control" Rows="2" Style="resize:none" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Drop Location</label>
                            <asp:TextBox runat="server" TextMode="MultiLine" name="Address" ID="txtDropLocation" class="form-control" Rows="2" Style="resize:none" ></asp:TextBox>
                        </div>
                        <div style="text-align:center;">
                            <button type="button" class="btn btn-danger btn-lg text-center" id="btnClear" runat="server" onserverclick="btnClear_click"> <span class="fa fa-close	"></span> Clear</button>
                            <button type="submit" class="btn btn-success btn-lg text-center" id="btnSubmit" runat="server" onserverclick="btnSubmit_click"><span class="fa fa-male"></span> Submit</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">

                <div id="SC_TBlock_469242" class="SC_TBlock" style="text-align: center;">loading...</div>

                <script type="text/javascript">
                    (sc_adv_out = window.sc_adv_out || []).push({
                        id: "469242",
                        domain: "n.ads1-adnow.com"
                    });
                </script>

                <script type="text/javascript" src="//st-n.ads1-adnow.com/js/adv_out.js"></script>

            </div>
        </div>
    </div>
</asp:Content>
