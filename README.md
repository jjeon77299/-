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



![image](https://user-images.githubusercontent.com/97486359/186587342-1cc9122e-7b7a-4ed5-82fc-324d9b025b8a.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186587382-7a9bc366-48cf-48e7-93b3-c8a27de35c75.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186587415-f430c2bd-f59b-4cd1-9ef2-52728ef5505d.png)<br>
![image](https://user-images.githubusercontent.com/97486359/186096035-b269452a-8df6-46fd-a539-74bc940a241e.png)<br>

만약 작성을 다하고 등록버튼을 누르면 join_p 창으로 이동하고, 다 처리하면 index창으로 이동합니다.  
<h2>join_p</h2>

![image](https://user-images.githubusercontent.com/97486359/186588018-ed04f780-67aa-440b-8ee0-98b2a4f0f4e4.png)<br>
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

sql 변수에 member_tbl를 조회할 수 있는 select 문을 사용하고(to_char을 사용해 20220825을 2022-08-25형으로 변경합니다),<br>
Connection을 이용해 DB와 연결 후 PreparedStatement와 ResultSet을 통해 sql의 결과를 rs에 저장합니다.

![image](https://user-images.githubusercontent.com/97486359/186559482-7e29851d-8367-47f0-9bce-beb7c497da13.png)

테이블을 만들고 그 안에 1번째 줄을 th로 만든 후,<br>
그 아래 whlie(rs.next())을 이용해 테이블의 마지막 줄까지 getSring으로 조회된 데이터을 화면에 표시합니다, <br>
또한 custno은 number 형식이지만 볼려올떼 문자열이되기 때문에 getString을 사용합니다.
