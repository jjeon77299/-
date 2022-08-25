<h1>정보처리산업기사</h1>

<h2>index</h2>

![image](https://user-images.githubusercontent.com/97486359/186081527-6954cd8b-dd95-4482-ace0-fd770be37dea.png)

<h2>css</h2>

![image](https://user-images.githubusercontent.com/97486359/186081284-d5342df1-5603-4dcc-a980-f19ca36b7292.png)

<h2>index+css</h2>

![image](https://user-images.githubusercontent.com/97486359/186084668-8669701d-3e7d-4ad6-a3a4-3b4a0f0c1ce7.png)

<h1>설명</h1>

<h2>DBConnect</h2>

![image](https://user-images.githubusercontent.com/97486359/186323140-2880a64b-117c-4ff1-870e-4e8cef5e50e4.png)

<h2>DB</h2>

![image](https://user-images.githubusercontent.com/97486359/186097250-b2de78f5-5d38-4c19-b55e-6dd9374eaf20.png)

<h2>join</h2>

![image](https://user-images.githubusercontent.com/97486359/186322930-50f7848c-3b29-4d7c-a9ef-98a0a00596db.png)<br><br>



![image](https://user-images.githubusercontent.com/97486359/186558512-b282ebdf-8f6d-4945-98a2-f052f5af5aa7.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186095815-4863144f-a73c-47d1-b088-4bdd7d0c5563.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186095861-8c0c1b0c-c463-49cb-9d60-99f2bdc869ee.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186096035-b269452a-8df6-46fd-a539-74bc940a241e.png)<br>

만약 작성을 다하고 등록버튼을 누르면 join_p 창으로 이동하고, 다 처리하면 index창으로 이동한다.  
<h2>join_p</h2>

![image](https://user-images.githubusercontent.com/97486359/186558581-14be23df-e75a-4c54-b50b-7070a75a8e74.png)
<h2>테이블 값 변화</h2>
![image](https://user-images.githubusercontent.com/97486359/186097927-9fdc4f59-526c-4af9-8058-1ccfa01d6d2b.png)<br>
추가전<br>
![image](https://user-images.githubusercontent.com/97486359/186098342-d1b56211-1eb3-4ba0-8e59-a146351a084b.png)<br>
추가하는 과정<br>
![image](https://user-images.githubusercontent.com/97486359/186098133-2fb85a70-452a-44d3-9ee4-ffd2ffab5d4a.png)<br>
추가후<br>

사진과 같이 custno가 100007인 홍길동이 추가되었습니다.<br>

<h2>member_list</h2>

![image](https://user-images.githubusercontent.com/97486359/186558818-65f22c26-5108-4e93-8397-ff66a0292c39.png)

sql 변수에 member_tbl를 조회할 수 있는 select 문을 사용하고, Connection을 이용해 DB와 연결 후 PreparedStatement와 ResultSet을 통해 sql의 결과를 rs에 저장한다.

![image](https://user-images.githubusercontent.com/97486359/186559482-7e29851d-8367-47f0-9bce-beb7c497da13.png)

테이블을 만들고 그 안에 th로 제목을 만들고, 그 아래 whlie(rs.next())을 이용해 member_tbl의 끝 번호까지 member_tbl의 정보를 넣는 것을 반복한다.
