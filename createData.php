<?php include "header.html"; ?>
<?php
	function createAptNameArray(){
		
		$array = array();
		
		
		$link = connectData();
	
		$query = "SELECT DISTINCT Name FROM aptdata";
		$result = mysqli_query($link, $query);
		while($row = mysqli_fetch_array($result)) { 
			$array[] = $row['Name'];
		}
		return $array;
	}
	
	function createAptUserArray(){
		
		$array = array();
			
		$link = connectData();
	
		$query = "SELECT * FROM users";
		$result = mysqli_query($link, $query);
		while($row = mysqli_fetch_array($result)) { 
			$array[] = $row['username'];
		}
		return $array;
	}
	
	function reviewArray(){
			$array = array( 
							"This apartment was fantastic! I had never lived in an apartment before, so this is my only experience with apartments. However, if this is what living in an apartment is like, then I sign me up for more! The landlord was super nice and at one point, waved the fee for turning in my rent one day late. The people were really quite here and I could hardly hear the train from where I lived. I would highly recommend this place to other students looking for a comfortable place to live. The only issue is that rent is a little high, and, for me, increased by about $100 after my first year.",
							"This place is terrible. No one here liked to party and the landlords were incredibly strict about the noise level. In addition, watch out for all the fines possible. You have a balcony, but don’t expect to do anything on it because you are not allowed to barbeque, or leave anything up there like a chair or bike. Also, leave your Oregon State Beaver gear decorations at home because the landlord will fine you if they see any decorations hanging in your windows are around your apartment. Lastly, don’t expect to have all those amenities they list for free. You have to pay an extra $25 a month to use the parking spot in front of your apartment and the “free” cable is actually just added into your rent. I’m not saying the place is terrible, there are much worse places to live, but be prepared for several conditional things.",
							"The apartment was pretty nice overall. The cost for us was low and only increased by about $20 in the second year that I lived there. The train was a bit loud from where I lived, but I eventually got used to it and, at some point, forgot all about it. The apartment itself was well kept, but was not cleaned very well the first time we moved in. I would recommend going around and cleaning everything before moving in. In addition, the apartment was super dusty and we had to dust everything almost every day. If you like clean living, I would not recommend this place.",
							"The apartment was nice, but don’t rely too much on the management for anything. It took us two full weeks of asking to finally get our refrigerator fixed. Also, the management will flip flop a lot on certain subjects like if you are allowed to barbeque or if you are allowed to use the parking spaces. The only thing that management seemed certain on was how much money you owed them and trust me, they want their money. You have very little time to get your total rent in after you get your electricity cost and if you are even a day late, the late fees go into effect which are about $100. Nevertheless, I can’t complain about the apartment itself. The place was nice and there were really no major issues, except for the hoard of spiders that invaded the apartment around the beginning of winter."
						);
						
			return $array;
	}

	
	function genRooms(){
		$aptNames = createAptNameArray();
		$link = connectData();
		foreach($aptNames as $name){
			$rand = rand(3, 5);
			for($i = 0; $i < $rand; $i++){
				$bedrooms = rand(1, 5);
				$bathrooms = rand(1,5);
				$rent = rand(500, 1000);
				
				$Query = "INSERT INTO apttestdata . rent_data (Name, Bedrooms, Bathrooms, Rent) VALUES ('" . $name . "', '" . $bedrooms . "', '" . $bathrooms . "', '" . $rent . "')";
				mysqli_query ($link, $Query);
			}
		}
	}
	
	function genReviews(){
		$aptNames = createAptNameArray();
		$userNames = createAptUserArray();
		$reviewArray = reviewArray();
		$rating = array("p","n","p","n");
		$datestart = strtotime('2015-3-1');
		$dateend = strtotime('2015-5-12');
		$link = connectData();
		foreach($aptNames as $name){
			foreach($userNames as $user){
				$i = rand(0,3);
				
				$val = rand($datestart, $dateend);
				$date = date("F j, Y", $val);
				$sqldate = date("Ymj", $val);
				
				
				$Query = "INSERT INTO apttestdata . reviews (Name, Review, User, Date, DatePrint, Rating) VALUES ('" . $name . "', '" . $reviewArray[$i] . "', '" . $user . "', '" . $sqldate . "','" . $date . "','" . $rating[$i] . "')";
				mysqli_query ($link, $Query);
			}
		}
	}
	
	function addPhotos(){
		$array = createAptNameArray();
		$link = connectData();
		
		foreach($array as $name){
			for($i = 0; $i < 5; $i++){
				$r = rand(0,19);
				$Query = "INSERT INTO apttestdata . aptimages (Name, ImagePath) VALUES ('" . $name . "', '" . $r . ".jpg')";
				mysqli_query ($link, $Query);
			}
		}
	}

?>


<?php
	addPhotos();
?>
<?php include "footer.html"; ?>