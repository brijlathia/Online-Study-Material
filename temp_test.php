<?php
	if(isset($_REQUEST['proceed1']))
		echo "<h1><pre>Proceed 1 Clicked</pre></h1>";
	if(isset($_REQUEST['proceed2']))
		echo "<h1><pre>Proceed 2 Clicked</pre></h1>";
?>
<form method="post">
<button name="proceed1">Proceed</button>
<br>
<button name="proceed2">Proceed</button>
</form>