<?php include "header.html" ?>
<h1 align="center">Contact Us</h1>

<form action="http://oregonstate.edu/tools/formmail.php" method="post">
<input type="hidden" name="recipient" value="frognerc@onid.oregonstate.edu" />
<input type="hidden" name="required" value="realname, email, message" />
<input type="hidden" name="subject" value="Beaver Rentals Contact Email" />
<input type="hidden" name="redirect" value="http://localhost/BeaverRentals/reply.php" />

<fieldset class="corners">
	<legend>We just need a little information please.</legend>
	<label for="realname">Name *</label>
	<input placeholder="Colin" accesskey="n" tabindex="1" name="realname" id="realname" type="text" required autofocus />
	<p></p>
	<label for="email">Email *</label>
	<input placeholder="name@yourdomainname.com" accesskey="e" tabindex="2" name="email" id="email" type="email" required />
	
</fieldset>

<fieldset class="corners">
	<legend>What seems to be your question or problem?</legend>
	<label for="message">Message *</label>
  	<textarea placeholder="No HTML allowed. Only write about your problem or question." accesskey="m" tabindex="5" id="message" name="message" rows="10" required></textarea>
</fieldset>

<fieldset class="corners">
	<legend>Check the following that applies to you. It may help solve your problem faster!</legend>

<p>What search engine do you use?</p>
<label for="searchgoogle">
<input  tabindex="10" tabindex="8" id="searchgoogle" name="search" type="radio" value="Google" />
Google</label>

<label for="searchyahoo">
<input tabindex="11" id="searchyahoo"  name="search" type="radio" value="Yahoo"  />
Yahoo</label>

<label for="searchmsn">
<input tabindex="12" id="searchmsn"    name="search" type="radio" value="MSN" />
MSN</label>
</fieldset>

<fieldset class="corners">
	<legend>Send us your message. We look forward to reading it!</legend>
	<label for="submit">Submit the form</label>
	<input accesskey="s" tabindex="14" name="submit" id="submit" type="submit" value="Send Message" />
	
	<label for="reset">Reset the contact form</label>
	<input accesskey="r" tabindex="15" name="reset" id="reset" type="reset" value="Trash Data and Restart" />
</fieldset>

</form>

<?php include "footer.html" ?>