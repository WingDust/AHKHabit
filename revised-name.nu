let pdffile = fd 00.pdf -d 1 f:/
$pdffile | lines | each { |i|
 let o_record = $"(date now | format date "%Y-%m-%d--%H-%M-%S")--($i)\r\n"
 $o_record | save --append records.txt
 let newf = $i | str replace -r ".PDF$" ""
 if $i != $newf {
   mv $i $newf
 }
 # print $i
 # print $newf
}

let pdffile2 = fd 00.pdf -d 1 f:/
$pdffile2 | lines | each { |i| 
 let o_record = $"(date now | format date "%Y-%m-%d--%H-%M-%S")--($i)\r\n" 
 $o_record | save --append records.txt
 let newf = $i | str replace -r ".pdf$" ""
 # print $i 
 # print $newf 
 if $i != $newf {
   mv $i $newf
 }
}
let 7z00 = fd 00[\d]+.7z -a --path-separator / f:/
$7z00 | lines  | each { |i| 
  print $i
 let newf = ($i | str replace -r "(00[0-9]+).7z" "7z.${1}") 

 let o_record = $"(date now | format date "%Y-%m-%d--%H-%M-%S")--($i)--$($newf)\r\n" 
 $o_record | save --append records.txt

 print $i
 print $newf

 if $i != $newf {
   mv $i $newf
 }


}
