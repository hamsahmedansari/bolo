<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Istikara.aspx.cs" Inherits="Bolo.Istikara" %>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="headchild">

    <meta  property="og:title" content="Istikara"/>
    <meta property='og:type' content='article' />
    <meta  property="og:image" content="https://bolo.com.pk/img/facebookicon1.jpg"/>
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
                        Isthikara
                    </div>                    
                </div>
            </div>         

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="
    border: 1px solid #ccc;">
                <div class="row text-center">

                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 " style="background-color:#5cb85c;color:#fff;">

                        <div class="row container-fluid">
                            <h3>
                                Isthikara
                            </h3>
                        </div>
                        <div style="text-align:justify; font-size:17px;">
                            <p><b>Question: How is salat ul-Istikhara prayed?</b></p>
                            <p><b>Answer:</b> The istikhara prayer is a very simple prayer of seeking guidance.</p>
                            <ul style="padding-left:75px;">
                                <li>One prays two rakats at any time that is not disliked, after which one recites the supplication of istikhara.</li>
                                <li>It is best to recite it before sleeping, though in no way necessary.</li>
                                <li>Like other duas, it is recommended that one face the qibla.</li>
                                <li>It is recommended to open the dua of istikhara, with praise of Allah and sending blessings on the Prophet and to close it in this manner, too.</li>
                                <li>It is disliked to ‘hasten’ in seeking the answer to one’s istikhara, like other duas, because the Prophet said, “Your prayers are answered, unless you hasten, saying, ‘I prayed, but no answer came.’”</li>
                                
                            </ul>
                            <p><strong>The Prayer in Arabic</strong></p>
                            <p style="text-align:right;font-weight:bold;">للَّهُمَّ إِنِّي أَسْتَخِيرُكَ بِعِلْمِكَ وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيمِ فَإِنَّكَ تَقْدِرُ وَلَا أَقْدِرُ وَتَعْلَمُ وَلَا أَعْلَمُ وَأَنْتَ عَلَّامُ الْغُيُوبِ اللَّهُمَّ إِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ خَيْرٌ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ وَإِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ شَرٌّ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي فَاصْرِفْهُ عَنِّي وَاصْرِفْنِي عَنْهُ وَاقْدُرْ لِي الْخَيْرَ حَيْثُ كَانَ ثُمَّ أَرْضِنِي</p>
                        <p><strong>Looking for signs</strong></p>
                            <p style="padding-left:50px;"> One should suspend one’s own judgement or inclination about the particular matter, and wait for Allah to show one a sign or to make things happen in a way that indicates what to do.</p>    
                        </div>
                    </div>
                </div>
            </div>
            <div class="row container-fluid">

                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 bg-primary" style="margin-top:20px;">

                    <div class="row container-fluid text-center">
                        <h3>
                            Isthikara Questions
                        </h3>
                    </div>
                    <div style="margin-bottom:20px;">
                        <div class="form-group">
                            <label>Full Name</label>
                            <asp:TextBox class="form-control" type="text" ID="txtFullName" runat="server"></asp:TextBox>
                          
                        </div>

                        <div class="form-group">
                            <label> Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" style="resize:none;" TextMode="MultiLine"></asp:TextBox>
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
                           <%-- <select name="city_id" id="city_id" class="form-control">
                                <option value="">-- Select City --</option>
                                <optgroup label="Popular Cities">
                                    <option value="405">Islamabad</option>
                                    <option value="406">Karachi</option>
                                    <option value="407">Lahore</option>
                                    <option value="285">Peshawar</option>
                                    <option value="299">Quetta</option>
                                    <option value="310">Rawalpindi</option>
                                </optgroup>
                                <optgroup label="Other Cities">
                                    <option value="1">Abbotabad</option>
                                    <option value="2">Abdul hakim</option>
                                    <option value="3">Adda jahan khan</option>
                                    <option value="4">Adda shaiwala</option>
                                    <option value="5">Akhora khattak</option>
                                    <option value="6">Ali chak</option>
                                    <option value="7">Allahabad</option>
                                    <option value="8">Amangarh</option>
                                    <option value="9">Arif wala</option>
                                    <option value="10">Arifwala</option>
                                    <option value="11">Attock</option>
                                    <option value="12">Babri banda</option>
                                    <option value="13">Badin</option>
                                    <option value="14">Bahawalnagar</option>
                                    <option value="15">Bahawalpur</option>
                                    <option value="16">Balakot</option>
                                    <option value="17">Bannu</option>
                                    <option value="18">Barbar loi</option>
                                    <option value="19">Baroute</option>
                                    <option value="20">Bat khela</option>
                                    <option value="21">Bhai pheru</option>
                                    <option value="22">Bhakkar</option>
                                    <option value="23">Bhalwal</option>
                                    <option value="24">Bhan saeedabad</option>
                                    <option value="25">Bhera</option>
                                    <option value="26">Bhimbar</option>
                                    <option value="27">Bhirya road</option>
                                    <option value="28">Bhuawana</option>
                                    <option value="29">Blitang</option>
                                    <option value="30">Buchay key</option>
                                    <option value="31">Burewala</option>
                                    <option value="32">Chacklala</option>
                                    <option value="33">Chaininda</option>
                                    <option value="34">Chak 4 b c</option>
                                    <option value="35">Chak 46</option>
                                    <option value="36">Chak jamal</option>
                                    <option value="37">Chak jhumra</option>
                                    <option value="38">Chak sawara</option>
                                    <option value="39">Chak sheza</option>
                                    <option value="40">Chakwal</option>
                                    <option value="41">Charsada</option>
                                    <option value="42">Chashma</option>
                                    <option value="43">Chawinda</option>
                                    <option value="44">Chicha watni</option>
                                    <option value="45">Chiniot</option>
                                    <option value="46">Chishtian</option>
                                    <option value="402">Chitral</option>
                                    <option value="47">Chohar jamali</option>
                                    <option value="48">Choppar hatta</option>
                                    <option value="49">Chowha saidan shah</option>
                                    <option value="50">Chowk azam</option>
                                    <option value="51">Chowk mailta</option>
                                    <option value="52">Chowk munda</option>
                                    <option value="53">Chunian</option>
                                    <option value="54">Dadakhel</option>
                                    <option value="55">Dadu</option>
                                    <option value="56">Daharki</option>
                                    <option value="57">Dandot</option>
                                    <option value="58">Dargai</option>
                                    <option value="59">Darya khan</option>
                                    <option value="60">Daska</option>
                                    <option value="61">Daud khel</option>
                                    <option value="62">Daulat pur</option>
                                    <option value="63">Daur</option>
                                    <option value="64">Deh pathaan</option>
                                    <option value="65">Depal pur</option>
                                    <option value="66">Dera ghazi khan</option>
                                    <option value="67">Dera ismail khan</option>
                                    <option value="68">Dera murad jamali</option>
                                    <option value="69">Dera nawab sahib</option>
                                    <option value="70">Dhatmal</option>
                                    <option value="71">Dhoun kal</option>
                                    <option value="72">Digri</option>
                                    <option value="73">Dijkot</option>
                                    <option value="74">Dina</option>
                                    <option value="75">Dinga</option>
                                    <option value="76">Doaaba</option>
                                    <option value="77">Doltala</option>
                                    <option value="78">Domeli</option>
                                    <option value="79">Dudial</option>
                                    <option value="80">Dunyapur</option>
                                    <option value="81">Eminabad</option>
                                    <option value="82">Estate l.m factory</option>
                                    <option value="83">Faisalabad</option>
                                    <option value="84">Farooqabad</option>
                                    <option value="85">Fateh pur</option>
                                    <option value="86">Feroz walla</option>
                                    <option value="87">Feroz watan</option>
                                    <option value="88">Feteh jhang</option>
                                    <option value="89">Fiza got</option>
                                    <option value="90">Gadoon amazai</option>
                                    <option value="91">Gaggo mandi</option>
                                    <option value="92">Gakhar mandi</option>
                                    <option value="93">Gambet</option>
                                    <option value="94">Garh maharaja</option>
                                    <option value="95">Garh more</option>
                                    <option value="96">Gari habibullah</option>
                                    <option value="97">Gari mori</option>
                                    <option value="98">Gawadar</option>
                                    <option value="99">Gharo</option>
                                    <option value="100">Ghazi</option>
                                    <option value="101">Ghotki</option>
                                    <option value="102">Gilgit</option>
                                    <option value="103">Gohar ghoushti</option>
                                    <option value="104">Gojar khan</option>
                                    <option value="105">Gojra</option>
                                    <option value="106">Goular khel</option>
                                    <option value="107">Guddu</option>
                                    <option value="108">Gujjar khan</option>
                                    <option value="109">Gujranwala</option>
                                    <option value="110">Gujrat</option>
                                    <option value="111">Hafizabad</option>
                                    <option value="112">Hala</option>
                                    <option value="113">Hangu</option>
                                    <option value="114">Hari pur</option>
                                    <option value="115">Hariwala</option>
                                    <option value="116">Haroonabad</option>
                                    <option value="117">Hasilpur</option>
                                    <option value="118">Hassan abdal</option>
                                    <option value="119">Hattar</option>
                                    <option value="120">Hattian lawrencepur</option>
                                    <option value="121">Haveli lakha</option>
                                    <option value="122">Havelian</option>
                                    <option value="123">Hayatabad</option>
                                    <option value="124">Hazro</option>
                                    <option value="125">Head marala</option>
                                    <option value="126">Hub inds estate</option>
                                    <option value="127">Hyderabad</option>
                                    <option value="128">Issa khel</option>
                                    <option value="129">Jaccobabad</option>
                                    <option value="130">Jaja abasian</option>
                                    <option value="131">Jalal pur jatan</option>
                                    <option value="132">Jalal pur priwala</option>
                                    <option value="133">Jampur</option>
                                    <option value="134">Jamrud road</option>
                                    <option value="135">Jamshoro</option>
                                    <option value="136">Jan pur</option>
                                    <option value="137">Jandanwala</option>
                                    <option value="138">Jaranwala</option>
                                    <option value="139">Jauharabad</option>
                                    <option value="140">Jehangira</option>
                                    <option value="141">Jehanian</option>
                                    <option value="142">Jehlum</option>
                                    <option value="403">Jhal Magsi</option>
                                    <option value="143">Jhand</option>
                                    <option value="144">Jhang</option>
                                    <option value="145">Jhatta bhutta</option>
                                    <option value="146">Jhelum</option>
                                    <option value="147">Jhudo</option>
                                    <option value="148">Joharabad</option>
                                    <option value="149">Kabir wala</option>
                                    <option value="150">Kacha khooh</option>
                                    <option value="151">Kahuta</option>
                                    <option value="152">Kakul</option>
                                    <option value="153">Kakur town</option>
                                    <option value="154">Kala bagh</option>
                                    <option value="155">Kala shah kaku</option>
                                    <option value="156">Kalar syedian</option>
                                    <option value="157">Kalaswala</option>
                                    <option value="158">Kallur kot</option>
                                    <option value="159">Kamalia</option>
                                    <option value="160">Kamalia musa</option>
                                    <option value="161">Kamber ali khan</option>
                                    <option value="162">Kamokey</option>
                                    <option value="163">Kamra</option>
                                    <option value="164">Kandh kot</option>
                                    <option value="165">Kandiaro</option>
                                    <option value="166">Karak</option>
                                    <option value="167">Karoor pacca</option>
                                    <option value="168">Karore lalisan</option>
                                    <option value="169">Kashmir</option>
                                    <option value="170">Kashmore</option>
                                    <option value="171">Kasur</option>
                                    <option value="172">Kazi ahmed</option>
                                    <option value="173">Khair pur</option>
                                    <option value="174">Khair pur mir</option>
                                    <option value="175">Khairpur nathan shah</option>
                                    <option value="176">Khan qah sharif</option>
                                    <option value="177">Khanbel</option>
                                    <option value="178">Khandabad</option>
                                    <option value="179">Khanewal</option>
                                    <option value="180">Khangarh</option>
                                    <option value="181">Khanqah dogran</option>
                                    <option value="182">Khanqah sharif</option>
                                    <option value="183">Kharian</option>
                                    <option value="184">Khewra</option>
                                    <option value="185">Khoski</option>
                                    <option value="186">Khurian wala</option>
                                    <option value="187">Khushab</option>
                                    <option value="188">Khushal kot</option>
                                    <option value="189">Khuzdar</option>
                                    <option value="190">Kohat</option>
                                    <option value="191">Kot addu</option>
                                    <option value="192">Kot bunglow</option>
                                    <option value="193">Kot ghulam mohd</option>
                                    <option value="194">Kot mithan</option>
                                    <option value="195">Kot radha kishan</option>
                                    <option value="196">Kotla</option>
                                    <option value="197">Kotla arab ali khan</option>
                                    <option value="198">Kotla jam</option>
                                    <option value="199">Kotla patdan</option>
                                    <option value="200">Kotli loharan</option>
                                    <option value="201">Kotri</option>
                                    <option value="202">Kumbh</option>
                                    <option value="203">Kundina</option>
                                    <option value="204">Kunjah</option>
                                    <option value="205">Kunri</option>
                                    <option value="206">Laki marwat</option>
                                    <option value="207">Lala musa</option>
                                    <option value="208">Lala rukh</option>
                                    <option value="209">Laliah</option>
                                    <option value="210">Lalshanra</option>
                                    <option value="211">Larkana</option>
                                    <option value="404">Lasbella</option>
                                    <option value="212">Lawrence pur</option>
                                    <option value="213">Layyah</option>
                                    <option value="214">Liaquat pur</option>
                                    <option value="215">Lodhran</option>
                                    <option value="216">Ludhan</option>
                                    <option value="217">Machi goth</option>
                                    <option value="218">Madina</option>
                                    <option value="219">Mailsi</option>
                                    <option value="220">Makli</option>
                                    <option value="221">Malakwal</option>
                                    <option value="222">Mamu kunjan</option>
                                    <option value="223">Mandi bahauddin</option>
                                    <option value="224">Mandra</option>
                                    <option value="225">Manga mandi</option>
                                    <option value="226">Mangal sada</option>
                                    <option value="227">Mangi</option>
                                    <option value="228">Mangla</option>
                                    <option value="229">Mangowal</option>
                                    <option value="230">Manoabad</option>
                                    <option value="231">Manshera</option>
                                    <option value="232">Mardan</option>
                                    <option value="233">Mari indus</option>
                                    <option value="234">Mastoi</option>
                                    <option value="235">Matiari</option>
                                    <option value="236">Matli</option>
                                    <option value="237">Mehar</option>
                                    <option value="238">Mehmood kot</option>
                                    <option value="239">Mehrab pur</option>
                                    <option value="240">Mian chunnu</option>
                                    <option value="241">Mian Walli</option>
                                    <option value="242">Mingora</option>
                                    <option value="243">Mir ali</option>
                                    <option value="244">Miran shah</option>
                                    <option value="245">Mirpur</option>
                                    <option value="246">Mirpur khas</option>
                                    <option value="247">Mirpur mathelo</option>
                                    <option value="248">Mohen jo daro</option>
                                    <option value="249">More kunda</option>
                                    <option value="250">Morgah</option>
                                    <option value="251">Moro</option>
                                    <option value="252">Mubarik pur</option>
                                    <option value="253">Multan</option>
                                    <option value="254">Muridkay</option>
                                    <option value="255">Murree</option>
                                    <option value="256">Musafir khana</option>
                                    <option value="257">Mustung</option>
                                    <option value="258">Muzaffarabad</option>
                                    <option value="259">Muzaffargarh</option>
                                    <option value="260">Nankana sahib</option>
                                    <option value="261">Narang mandi</option>
                                    <option value="262">Narowal</option>
                                    <option value="263">Naseerabad</option>
                                    <option value="264">Naudero</option>
                                    <option value="265">Naukot</option>
                                    <option value="266">Naukundi</option>
                                    <option value="267">Nawab shah</option>
                                    <option value="268">New saeedabad</option>
                                    <option value="269">Nilore</option>
                                    <option value="270">Noor kot</option>
                                    <option value="271">Noorpur nooranga</option>
                                    <option value="272">Nowshera</option>
                                    <option value="273">Nowshera cantt</option>
                                    <option value="274">Nowshero peroz</option>
                                    <option value="275">Okara</option>
                                    <option value="401">Other</option>
                                    <option value="276">Padidan</option>
                                    <option value="277">Pak china fertilizer</option>
                                    <option value="278">Pak pattan sharif</option>
                                    <option value="279">Panjan kisan</option>
                                    <option value="280">Panjgoor</option>
                                    <option value="281">Pannu aqil</option>
                                    <option value="282">Pasni</option>
                                    <option value="283">Pasroor</option>
                                    <option value="284">Patoki</option>
                                    <option value="286">Phagwar</option>
                                    <option value="287">Phalia</option>
                                    <option value="288">Phool nagar</option>
                                    <option value="289">Piaro goth</option>
                                    <option value="290">Pindi bhohri</option>
                                    <option value="291">Pindi dadan khan</option>
                                    <option value="292">Pindi gheb</option>
                                    <option value="293">Pir mahal</option>
                                    <option value="294">Pishin</option>
                                    <option value="295">Qalandarabad</option>
                                    <option value="296">Qasba gujrat</option>
                                    <option value="297">Qazi ahmed</option>
                                    <option value="298">Quaidabad</option>
                                    <option value="300">Rabwah</option>
                                    <option value="301">Rahimyar khan</option>
                                    <option value="302">Rahwali</option>
                                    <option value="303">Raiwand</option>
                                    <option value="304">Rajana</option>
                                    <option value="305">Rajanpur</option>
                                    <option value="306">Rangoo</option>
                                    <option value="307">Ranipur</option>
                                    <option value="308">Ratto dero</option>
                                    <option value="309">Rawala kot</option>
                                    <option value="311">Rawat</option>
                                    <option value="312">Renala khurd</option>
                                    <option value="313">Risalpur</option>
                                    <option value="314">Rohri</option>
                                    <option value="315">Sadiqabad</option>
                                    <option value="316">Sagri</option>
                                    <option value="317">Sahiwal</option>
                                    <option value="318">Saidu sharif</option>
                                    <option value="319">Sajawal</option>
                                    <option value="320">Sakrand</option>
                                    <option value="321">Samanabad</option>
                                    <option value="322">Sambrial</option>
                                    <option value="323">Samma satta</option>
                                    <option value="324">Samundri</option>
                                    <option value="325">Sanghar</option>
                                    <option value="326">Sanghi</option>
                                    <option value="327">Sangla hill</option>
                                    <option value="328">Sangote</option>
                                    <option value="329">Sanjwal</option>
                                    <option value="330">Sara e alamgir</option>
                                    <option value="331">Sara e naurang</option>
                                    <option value="332">Sargodha</option>
                                    <option value="333">Satyana bangla</option>
                                    <option value="334">Sehar baqlas</option>
                                    <option value="335">Serai alamgir</option>
                                    <option value="336">Shadiwal</option>
                                    <option value="337">Shah kot</option>
                                    <option value="338">Shahdad kot</option>
                                    <option value="339">Shahdad pur</option>
                                    <option value="340">Shahpur chakar</option>
                                    <option value="341">Shaikhupura</option>
                                    <option value="342">Shamsabad</option>
                                    <option value="343">Shankiari</option>
                                    <option value="344">Shedani sharif</option>
                                    <option value="345">Sheikhupura</option>
                                    <option value="346">Shemier</option>
                                    <option value="347">Shikar pur</option>
                                    <option value="348">Shorkot</option>
                                    <option value="349">Shujabad</option>
                                    <option value="350">Sialkot</option>
                                    <option value="351">Sibi</option>
                                    <option value="352">Sihala</option>
                                    <option value="353">Sikandarabad</option>
                                    <option value="354">Silanwala</option>
                                    <option value="355">Sita road</option>
                                    <option value="356">Skardu</option>
                                    <option value="357">Sohawa district daska</option>
                                    <option value="358">Sohawa district jelum</option>
                                    <option value="359">Sukkur</option>
                                    <option value="360">Swabi</option>
                                    <option value="361">Swatmingora</option>
                                    <option value="362">Takhtbai</option>
                                    <option value="363">Talagang</option>
                                    <option value="364">Talamba</option>
                                    <option value="365">Talhur</option>
                                    <option value="366">Tando adam</option>
                                    <option value="367">Tando allahyar</option>
                                    <option value="368">Tando jam</option>
                                    <option value="369">Tando mohd khan</option>
                                    <option value="370">Tank</option>
                                    <option value="371">Tarbela</option>
                                    <option value="372">Tarmatan</option>
                                    <option value="373">Taunsa sharif</option>
                                    <option value="374">Taxila</option>
                                    <option value="375">Tharo shah</option>
                                    <option value="376">Thatta</option>
                                    <option value="377">Theing jattan more</option>
                                    <option value="378">Thull</option>
                                    <option value="379">Tibba sultanpur</option>
                                    <option value="380">Tobatek singh</option>
                                    <option value="381">Topi</option>
                                    <option value="382">Toru</option>
                                    <option value="383">Trinda mohd pannah</option>
                                    <option value="384">Turbat</option>
                                    <option value="385">Ubaro</option>
                                    <option value="386">Ugoki</option>
                                    <option value="387">Ukba</option>
                                    <option value="388">Umar kot</option>
                                    <option value="389">Upper deval</option>
                                    <option value="390">Usta mohammad</option>
                                    <option value="391">Vehari</option>
                                    <option value="392">Village Sunder</option>
                                    <option value="393">Wah cantt</option>
                                    <option value="394">Wahi hassain</option>
                                    <option value="395">Wan radha ram</option>
                                    <option value="396">Warah</option>
                                    <option value="397">Warburton</option>
                                    <option value="398">Wazirabad</option>
                                    <option value="399">Yazman mandi</option>
                                    <option value="400">Zahir pir</option>
                                </optgroup>
                            </select>--%>
                        </div>

                        <div class="form-group">
                            <label> Email</label>
                          <%--  <input type="email" class="form-control" id="txtEmail" runat="server" />--%>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="* Email is not in Correct format" ControlToValidate="txtEmail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label> Contact no</label>
                           <%-- <input type="number" class="form-control" id="txtContactNo" runat="server" />--%>
                            <asp:TextBox ID="txtContactNo" runat="server" MaxLength="15"  Type="text" CssClass="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                             <asp:Label runat="server" ID="lblInvalidContact" Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                        </div>
                        <div class="form-group">
                            <label> Topic </label>
                            <asp:DropDownList ID="DropDownListTopic" runat="server" CssClass="form-control">
                                 <asp:ListItem value="-1">-- Select --</asp:ListItem>
                                <asp:ListItem > Other</asp:ListItem>
                                <asp:ListItem >Aakho ki bemari</asp:ListItem>
                                <asp:ListItem >Bay Aulady</asp:ListItem>
                                <asp:ListItem >Berozgari</asp:ListItem>
                                <asp:ListItem >Chuta Qad</asp:ListItem>
                                <asp:ListItem >Gumshudgi</asp:ListItem>
                                <asp:ListItem >Hafiza talimi kamiyabi</asp:ListItem>
                                <asp:ListItem >Hamal ki hifazat</asp:ListItem>
                                <asp:ListItem >Haq Wasooli</asp:ListItem>
                                <asp:ListItem >Istikhaaray ka Tariqa</asp:ListItem>
                                <asp:ListItem >jildi bemari</asp:ListItem>
                                <asp:ListItem >Jisam mian dard</asp:ListItem>
                                <asp:ListItem >Larai-Jhagray</asp:ListItem>
                                <asp:ListItem >mali parishani baysukuni</asp:ListItem>
                                <asp:ListItem >Nafarmani</asp:ListItem>
                                <asp:ListItem >Parishani</asp:ListItem>
                                <asp:ListItem >Qarza</asp:ListItem>
                                <asp:ListItem >Rishta</asp:ListItem>
                                <asp:ListItem >sugar-blood pressure-cancer</asp:ListItem>
                                <asp:ListItem >Waswasay Dar khuaf</asp:ListItem>
                            </asp:DropDownList>
                           <%-- <select name="Topic" id="Topic" class="form-control">
                                <option value="">-- Select --</option>
                                <option value="65"> Other</option>
                                <option value="57">Aakho ki bemari</option>
                                <option value="48">Bay Aulady</option>
                                <option value="14">Berozgari</option>
                                <option value="63">Chuta Qad</option>
                                <option value="54">Gumshudgi</option>
                                <option value="59">Hafiza talimi kamiyabi</option>
                                <option value="58">Hamal ki hifazat</option>
                                <option value="53">Haq Wasooli</option>
                                <option value="51">Istikhaaray ka Tariqa</option>
                                <option value="56">jildi bemari</option>
                                <option value="62">Jisam mian dard</option>
                                <option value="49">Larai-Jhagray</option>
                                <option value="55">mali parishani baysukuni</option>
                                <option value="64">Nafarmani</option>
                                <option value="61">Parishani</option>
                                <option value="50">Qarza</option>
                                <option value="13">Rishta</option>
                                <option value="4">sugar-blood pressure-cancer</option>
                                <option value="60">Waswasay Dar khuaf</option>
                            </select>--%>
                        </div>


                      <%--  <div class="form-group">
                            <label> Patient Name <sup style="color:#ccc;">(Person name who relates to this problem)</sup> </label>
                            <input type="text" class="form-control">
                        </div>--%>

                        <div class="form-group">
                            <label> Patient Mother Name  <sup style="color:#ccc;">(Person name who relates to this problem)</sup> </label>
                           <%-- <input type="text" class="form-control" id="txtMotherName" runat="server" />--%>
                            <asp:TextBox ID="txtMotherName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label> Patient Problem <sup style="color:#ccc;">(Please describe in details)</sup> </label>
                           <%-- <textarea class="form-control" style="resize:none;    height: 200px;" id="txtPatientProblem" runat="server"></textarea>--%>
                            <asp:TextBox ID="txtPatientProblem" runat="server" CssClass="form-control" Style="resize:none" Height="200px" TextMode="MultiLine"></asp:TextBox>
                        </div>


                        <div style="text-align:center;">

                            <h6>

                                We Replay Within 24 hours

                            </h6>

                           <button type="button" class="btn btn-danger btn-lg text-center" runat="server" onserverclick="btnClear_Click"> <span class="fa fa-close	"></span> Clear</button>
                            <button type="submit" class="btn btn-success btn-lg text-center" runat="server" onserverclick="btnSubmit_Click" ><span class="fa fa-male"></span> Submit</button>
                            <%--<asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger btn-lg text-center" OnClick="btnClear_Click" />
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" UseSubmitBehavior="false" CssClass="btn btn-success btn-lg text-center" OnClick="btnSubmit_Click" />--%>
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

            <div class="row " style="      margin-left: 0.2%;overflow:hidden;width:100%;margin-top:10px;">
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
                                <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" style="margin-bottom:10px;" TextMode="MultiLine" MaxLength="500"></asp:TextBox>
                                <button type="button" style="margin-left:10px;color:#fff;background-color:#e30613" class="btn btn-lg" runat="server" onserverclick="btnFeedbackClear_Click"> <i class="	fa fa-close	"></i>  Clear</button>
                                <button type="Submit" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-lg" runat="server" onserverclick="btnFeedbackSubmit_Click"> <i class="		fa fa-cloud	"></i>  Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
               
                     <asp:ListView ID="lvFeedback" runat="server" DataKeyNames="pkFeedbackID">
                         <LayoutTemplate>
                             <table cellpadding="2" runat="server" id="tblEmployees" border="0" style="width:100%">
                                 <tr runat="server" id="itemPlaceholder">

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
                                            <img src="img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%;max-width:70px; min-width:45px"/>

                                        </div>
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
                                            <div class="row container-fluid">
                                                <b>
                                                    <asp:Label ID="lblName" runat="server"><%#Eval("varName") %></asp:Label>
                                                </b>
                                                <span style="font-size:15px; margin-right:10px;">
                                                    <asp:Label ID="lblDateAdded" runat="server">on<%#Eval("dteDateAdded","{0:MM dd, yyyy hh:mm tt}") %></asp:Label>
                                                </span>
                                            </div>
                                            <div class="row">
                                                <p runat="server" id="pFeedback" style="font-size:18px;padding:16px;" class="text-dark">
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


               <%-- <div class="row" style="    width: 99.5%;    margin-left: 0.2%;">

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

                    <p style="font-size:30px;padding:5px;">
                        1 Comment
                    </p>

                </div>
                <div class="row container-fluid" style="border-bottom:1px solid #ccc;">


                    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
                        <img src="../img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
                        <div class="row container-fluid">

                            <b>
                                Aman
                            </b>
                            <span style="font-size:15px;">
                                on 23rd October 2017 at 11:36 am
                            </span>


                        </div>
                        <div class="row">

                            <p style="font-size:18px;padding: 16px;" class="text-dark">
                                Nice
                            </p>

                        </div>
                    </div>

                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2 col-2 text-right">
                        <button type="button" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-md"> <i class="	fa fa-mail-reply	"></i>  Relpy</button>

                    </div>
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
                                    <input id="email" type="text" class="form-control" name="email" placeholder="Name">
                                </div>

                                <div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                    <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                                </div>

                                <!--<div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="">Website</i></span>
                                    <input id="password" type="password" class="form-control" name="password" placeholder="Website">
                                </div>-->

                                <textarea class="form-control textarea-custom" placeholder="Comment" rows="5" id="comment" style="margin-bottom:10px;"></textarea>
                                <button type="button" style="margin-left:10px;color:#fff;background-color:#e30613" class="btn btn-lg"> <i class="	fa fa-close	"></i>  Clear</button>
                                <button type="button" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-lg"> <i class="		fa fa-cloud	"></i>  Submit</button>


                            </div>
                        </div>

                    </div>

                </div>--%>
            </div>

        </div>
    </div>
</asp:Content>
