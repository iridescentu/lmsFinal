import styled from "styled-components";

const Container = styled.div`
  width: 100%;
  display: flex;
  justify-content: center;
  padding: 0 20px;
`;

const Title = styled.h2`
  margin-top: 70px;
  color: black;
  margin-bottom: 30px;
  text-align: center;
  font-size: 28px;
`;

const ReviewWrapper = styled.div`
  display: flex;
  flex-direction: column;
  gap: 20px;
`;

const Review = styled.div`
  flex: 1;
  width: 700px;
  padding: 20px;
  border: 2px solid #3182f6;
  border-radius: 15px;
`;

const Name = styled.div`
  font-weight: bold;
  font-size: 20px;
  margin-bottom: 10px;
  color: #3182f6;
`;

const Text = styled.div`
  margin-bottom: 10px;
`;

const CourseName = styled.div`
  font-style: italic;
  color: #666;
`;

export function CourseReview() {
  return (
    <Container>
      <ReviewWrapper>
        <Title>" 수강생들의 100% 솔직한 찐 후기 "</Title>
        <Review>
          <Name>고*영</Name>
          <Text>
            중간에 일본, 미국 왔다갔다하며 몇번이나 3차도전 실패였는데 매일
            시간맞춰 강의를 수강해서 결국 성공했습니다 ^^ 쉽지 않았지만 이
            장학금제도 덕분에 하루하루 영어공부가 즐거웠네요 앞으로 열심히
            수강하겠습니다
          </Text>
          <CourseName>토익</CourseName>
        </Review>
        <Review>
          <Name>고*영</Name>
          <Text>
            중간에 일본, 미국 왔다갔다하며 몇번이나 3차도전 실패였는데 매일
            시간맞춰 강의를 수강해서 결국 성공했습니다 ^^ 쉽지 않았지만 이
            장학금제도 덕분에 하루하루 영어공부가 즐거웠네요 앞으로 열심히
            수강하겠습니다
          </Text>
          <CourseName>토익</CourseName>
        </Review>
        <Review>
          <Name>고*영</Name>
          <Text>
            중간에 일본, 미국 왔다갔다하며 몇번이나 3차도전 실패였는데 매일
            시간맞춰 강의를 수강해서 결국 성공했습니다 ^^ 쉽지 않았지만 이
            장학금제도 덕분에 하루하루 영어공부가 즐거웠네요 앞으로 열심히
            수강하겠습니다
          </Text>
          <CourseName>토익</CourseName>
        </Review>
      </ReviewWrapper>
    </Container>
  );
}
