<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="KhwabKiTabeer.aspx.cs" Inherits="Bolo.KhwabKiTabeer" %>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="headchild">
      
        <meta property="og:title" content="Khwab ki Tabeer" />
        <meta property="og:type" content="article" />
        <meta property="og:image" content="https://bolo.com.pk/img/khuwab2.jpg" />
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
                        khwabon ki tabeer
                    </div>
                </div>
            </div>

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="
    border: 1px solid #ccc;
">
                <div class="row text-center">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="height:450px; overflow:scroll; overflow-x:hidden;">
                        <%--<div class="row container-fluid">
                            <h3>
                                khwabon ki tabeer
                            </h3>
                        </div>--%>
                        <%--<p style="text-align:justify;padding:20px;">Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.</p>--%>
                        <img src="img/KUWABKITABEER.jpg" alt="KhuabKiTabeerImage" style="width:100%;" />
                    </div>
                </div>
            </div>

            <div class="row container-fluid">

                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 bg-primary" style="margin-top:20px;">

                    <div class="row container-fluid text-center">

                        <h3>

                            khwabon ki tabeer Questions


                        </h3>

                    </div>


                    <div style="margin-bottom:20px;">
                        <div class="form-group">
                            <label>Full Name</label>
                             <asp:TextBox class="form-control" type="text" ID="txtFullName" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label> Address</label>
                            <asp:TextBox runat="server" TextMode="MultiLine" name="Address" ID="txtAddress" class="form-control" Rows="2" Style="resize:none"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label> Country</label>
                            <asp:DropDownList ID="DropDownListCountry" runat="server" CssClass="form-control" >
                                <asp:ListItem Value="-1">-- Select --</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>

                            </asp:DropDownList>
                           
                        </div>
                        <div class="form-group">
                            <label> City</label>
                             <asp:DropDownList ID="DropDownListCity" runat="server" CssClass="form-control">
                                 <asp:ListItem Value="-1">-- Select --</asp:ListItem>
                                <asp:ListItem>Karachi</asp:ListItem>
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
                            <label> Email</label>
                             <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="* Email is not in Correct format" ControlToValidate="txtEmail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label> Contact no</label>
                            <asp:TextBox ID="txtContactNo" runat="server" MaxLength="15" Type="text" CssClass="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                            <asp:Label runat="server" ID="lblInvalidContact"  Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                             </div>                       
                         <div class="form-group">
                            <label>  Detail khowab  <sup style="color:#ccc;">(Please describe in details)</sup> </label>
                              <asp:TextBox runat="server" TextMode="MultiLine" name="txtDetails" ID="txtDetails" class="form-control" Height="200px" Style="resize:none"></asp:TextBox>
                        </div>
                        <div style="text-align:center;">
                            <button type="button" class="btn btn-danger btn-lg text-center" runat="server" onserverclick="btnClear_Click"> <span class="fa fa-close	"></span> Clear</button>
                            <button type="submit" class="btn btn-success btn-lg text-center" runat="server" onserverclick="btnSubmit_Click"><span class="fa fa-male"></span> Submit</button>
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

            <div class="row " style="margin-left: 0.2%;overflow:hidden;width:100%;margin-top:10px;">
                  <asp:Panel ID="pnSocialDetail" runat="server" Visible="true">
                <div class="row" style="width: 99.5%;    margin-left: 0.2%;">

                    <div class="" style="border:0px;margin-left: 0px;padding: 0px;">

                        <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                            Comment
                        </div>

                         </div>

                </div>
                <div class="" style="border:0px;margin-left: 0px;padding: 0px;">

                    <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;border:0px;box-shadow:none;">
                        Follow us
                        <button type="button" style="margin-left:10px;background-color:#00a542;color:#fff;" class="btn btn-sm"> <i class="	fa fa-envelope"></i> Follow Us</button>
                        <button type="button" style="margin-left:10px;background-color:#4267b2;color:#fff;" class="btn btn-sm"> <i class="	fa fa-facebook"></i> Like us</button>
                        <button type="button" style="margin-left:10px;background-color:#1b95e0;color:#fff;" class="btn btn-sm "> <i class="	fa fa-twitter-square"></i> Follow us</button>
                        <button type="button" style="margin-left:10px;background-color:#bd081c;color:#fff;" class="btn btn-sm "> <i class="		fa fa-pinterest-p"></i> Follow us</button>
                    </div>




                </div>
               
                <div class="row container-fluid">

                    <p runat="server" id="printNumberOfComments" style="font-size:30px;padding:5px;">
                        1 Comment
                    </p>

                </div>
                <div class="row">


                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="padding:50px;">

                        <div class="form-group">
                            <div class="text-center">
                                <label>Submit a Comment</label>
                                <p style="font-size:14px" class="text-dark">
                                    Your email address will not be published. Required fields are marked *
                                </p>

                                <div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="fa fa-user-o"></i></span>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" MaxLength="150" ></asp:TextBox>
                                </div>

                                <div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                    <asp:TextBox ID="txtEmailComment" Type="Email"  runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" MaxLength="255" ></asp:TextBox>
                                </div>

                                
                                <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" style="margin-bottom:10px;" TextMode="MultiLine" MaxLength="500" ></asp:TextBox>
                                <button type="button" style="margin-left:10px;color:#fff;background-color:#e30613" class="btn btn-lg" runat="server" onserverclick="btnFeedbackClear_Click"> <i class="	fa fa-close	"></i>  Clear</button>
                                <button type="Submit" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-lg" runat="server" onserverclick="btnFeedbackSubmit_Click"> <i class="		fa fa-cloud	"></i>  Submit</button>


                            </div>
                        </div>

                    </div>

                </div>
               
                    <asp:ListView ID="lvFeedback" runat="server" DataKeyNames="pkFeedbackID">
                        <LayoutTemplate>
                        <table cellpadding="2" runat="server" id="tblEmployees" border="0" style="width:100%">
                            <tr runat ="server" id="itemPlaceholder">

                            </tr>
                        </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr runat="server">
                                <td>
                                    <div class="row container-fluid" style="border-bottom:1px solid #ccc;">
                                        <br />
                                        <br />
                                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-xs-2 col-2 text-right">
                                                <img src="img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px; min-width:45px"/>

                                            </div>
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
                                            <div class="row container-fluid">
                                                <b>
                                                    <asp:Label ID="lblName" runat="server"><%#Eval("varName") %></asp:Label>
                                                </b>
                                                <span style="font-size:15px; margin-right:10px;" >
                                                    <asp:Label ID="lblDateAdded" runat="server">on<%#Eval("dteDateAdded", "{0:MM dd, yyyy hh:mm tt}") %></asp:Label>
                                                </span>

                                            </div>
                                            <div class="row">
                                                <p runat="server" id="pFeedback" style="font-size:18px; padding:16px;" class="text-dark">
                                                    <%#Eval("txtFeedback") %>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>

                    </asp:Panel>
            </div>

        </div>
    </div>
</asp:Content>
