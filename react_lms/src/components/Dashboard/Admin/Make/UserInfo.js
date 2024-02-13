import styled from "styled-components";
import { useContext, useState, useEffect } from "react";
import { AuthContext } from "../../../../AuthContext";
import { apiGetAllCourses } from "../../../RestApi";

const Table = styled.table`
  width: 100%;
  border-collapse: collapse;
`;

const Th = styled.th`
  padding: 10px;
  border-bottom: 2px solid #ddd;
  background-color: lightsalmon;
`;

const Td = styled.td`
  padding: 10px;
  border-bottom: 1px solid #ddd;
`;

const Tr = styled.tr`
  &:nth-child(even) {
    background-color: #f2f2f2;
  }
`;

const Container = styled.div`
  width: 100%;
  display: grid;
  grid-template-rows: repeat(2, auto);
  gap: 20px;
`;

const Section = styled.div`
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  max-height: 300px;
  overflow-y: auto;
`;

const StickyThead = styled.thead`
  position: sticky;
  top: 0;
  background-color: white;
  z-index: 1;
`;

export function UserInfo() {
  const { user } = useContext(AuthContext);
  const [courses, setCourses] = useState([]);
  const [userInfo, setUserInfo] = useState(null);

  useEffect(() => {
    apiGetAllCourses().then((response) => {
      setCourses(response.data.data);
      console.log(response.data.data);
    });
  }, []);

  return (
    <Container>
      <Section>
        <Table>
          <StickyThead>
            <h1>유저 정보</h1>
            <Tr>
              <Th>이름</Th>
              <Th>아이디</Th>
              <Th>생년월일</Th>
              <Th>성별</Th>
              <Th>국적</Th>
              <Th>이메일</Th>
            </Tr>
          </StickyThead>
          <tbody>
            {userInfo && (
              <Tr>
                <Td>{userInfo.name}</Td>
                <Td>{userInfo.id}</Td>
                <Td>{userInfo.birthdate}</Td>
                <Td>{userInfo.gender}</Td>
                <Td>{userInfo.nationality}</Td>
                <Td>{userInfo.email}</Td>
              </Tr>
            )}
          </tbody>
        </Table>
      </Section>
      <Section>
        <h1>모든 유저 보기</h1>
      </Section>
    </Container>
  );
}
