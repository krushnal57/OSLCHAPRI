#!/bin/sh
create(){
touch addressbook.txt
echo "Address Book successfully created!"
}
insert() {
echo "Enter Your Name: "
read name
echo "Enter Your Address:"
read address
echo "Enter Your PhoneNumber: "
read phoneNo
echo "Enter Your E-mail Id:"
read email
echo "$name $address $phoneNo $email " >> addressbook.txt
}
view()
{
echo "Show the contents of the Address Book"
echo "Name Address PhoneNumber Email"
cat addressbook.txt
}
modify()
{
echo "Enter the name that you want to modify: "
read name
grep -v "$name" addressbook.txt > addressbook1.txt
cp addressbook1.txt addressbook.txt
rm addressbook1.txt
echo "Enter the name:"
read name
echo "Enter the address:"
read address
echo "Enter the phone number:"
read phoneNo
echo "Enter the E-mail:"
read email
echo "$name $address $phoneNo $email " >> addressbook.txt
}
delete()
{
echo "Enter the name that you want to delete:"
read name
grep -v "$name" addressbook.txt >- addressbook1.txt
cp addressbook1.txt addressbook.txt
rm addressbook1.txt
}
n=0
while [ $n -ne 6 ]
do
echo "Enter Your Choice:"
echo "1. Create"
echo "2. Insert"
echo "3. View"
echo "4. Modify"
echo "5. Delete"
echo "6. Exit"
read ch
case $ch in
"1") create;;
"2") insert;;
"3") view;;
"4") modify;;
"5") delete;;
"6") exit;;
esac
done