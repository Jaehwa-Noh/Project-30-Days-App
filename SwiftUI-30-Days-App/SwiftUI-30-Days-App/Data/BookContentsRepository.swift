//
//  BookContentsRepository.swift
//  SwiftUI-30-Days-App
//
//  Created by Jaehwa Noh on 12/1/23.
//

struct BookContentsRepository {
    let bookContents = [
        BookContent(day: "Day 1", titleString: "가장 어두울 때", contentString: "가장 어두울 때는 눈을 감고 있을 때이다. 눈을 떠라.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day1"),
        BookContent(day: "Day 2", titleString: "내가 누구인지", contentString: "내가 누구인지 잊지 말자.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day2"),
        BookContent(day: "Day 3", titleString: "하늘을 나는 느낌", contentString: "바람이 불 때, 양팔을 들어 올리면 하늘을 나는 느낌이 들기도 하고, 지평선으로 번지점프를 하는 느낌도 든다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day3"),
        BookContent(day: "Day 4", titleString: "세상에는 닮은 사람들이 존재한다", contentString: "세상엔 닮은 사람들이 존재한다. 하늘이 나에게 두 번째 기회를 주는 것이 아닐지 모르겠다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day4"),
        BookContent(day: "Day 5", titleString: "해야 할까? 말아야 할까? 할 때에는", contentString: "해야 할까? 말아야 할까? 할 때는 미래의 나에게 미안하지 않게 결정하자고 생각하라.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day5"),
        BookContent(day: "Day 6", titleString: "가짜에 의미를 부여하는 것", contentString: "가짜에 의미를 부여하는 것은 자살행위이다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day6"),
        BookContent(day: "Day 7", titleString: "내가 힘들여 지킨 것", contentString: "내가 힘들여 지킨 것은 소중한 것이다. 아무도 내 소중한 것들을 가져갈 수 없다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day7"),
        BookContent(day: "Day 8", titleString: "기다린다", contentString: "난 항상 무엇인가를 기다리며 산다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day8"),
        BookContent(day: "Day 9", titleString: "사랑과 복잡도", contentString: "사랑하면 명확해질 줄 알았는데, 오히려 복잡해져 간다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day9"),
        BookContent(day: "Day 10", titleString: "다시 처음으로 돌아가도", contentString: "다시 처음으로 돌아가도 다시 시작하면 돼! 아직 살아있잖아.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day10"),
        BookContent(day: "Day 11", titleString: "애매한 나", contentString: "내가 힘든 건 너 때문이 아니라 나 때문이었어. 애매한 나 때문.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day11"),
        BookContent(day: "Day 12", titleString: "도시의 파도", contentString: "도심의 자동차 소리가 파도 소리처럼 들렸고 마치 바다에 온 것 같은 착각을 불러일으키는 시원한 바람이 불어왔다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day12"),
        BookContent(day: "Day 13", titleString: "좌절", contentString: "좌절하고, 또 좌절하라 그것도 당당하게!", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day13"),
        BookContent(day: "Day 14", titleString: "지상 위에", contentString: "지상 위에 서라, 난 여기 있다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day14"),
        BookContent(day: "Day 15", titleString: "현재", contentString: "현재 땅을 딛고 있다는 사실을 깨닫는다면 과거와 미래의 망상 속이 아닌 지금을 살고 있다는 것을 알게 될 것이다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day15"),
        BookContent(day: "Day 16", titleString: "현재에 집중", contentString: "현재에 집중하라 지금도 많은 걸 놓치고 있다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day16"),
        BookContent(day: "Day 17", titleString: "기대", contentString: "기대가 사람을 지치게 하네.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day17"),
        BookContent(day: "Day 18", titleString: "감정 정의", contentString: "현재의 감정을 정의하자.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day18"),
        BookContent(day: "Day 19", titleString: "나의 공부법", contentString: "너무 외우려고 하지 마라, 세세하게 보다는 크게 보고 그런 기능이 있다는 것만 기억하면 찾을 수 있다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day19"),
        BookContent(day: "Day 20", titleString: "번지점프", contentString: "번지점프를 하면서 느꼈다. 나는 하늘을 날 수 없다고, 내가 돌이킬 수 있는 건 없다고. 하지만 나는 다른 걸 알 수 있었다. 나에겐 용기가 있다는 사실을.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day20"),
        BookContent(day: "Day 21", titleString: "그리움일까?", contentString: "그리움이란 그런 게 아니야. 네가 지금 느끼는 감정은 원망, 분노, 아쉬움일 뿐이야.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day21"),
        BookContent(day: "Day 22", titleString: "노래는", contentString: "노래는 노래일 뿐이다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day22"),
        BookContent(day: "Day 23", titleString: "사랑받기보다는", contentString: "사랑받기보다는 사랑하는 능력을 키우자.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day23"),
        BookContent(day: "Day 24", titleString: "따뜻함", contentString: "그대의 따뜻한 말과 온기가 아직 나에게 남아, 이 얼음처럼 차가운 세상에 내가 당당히 설 수 있게 해줍니다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다』, 부크크(2021)", imageName: "day24"),
        BookContent(day: "Day 25", titleString: "내가 행한 것들", contentString: "내가 과거에 행한 것들이 다시 나에게 돌아와 현재와 연결되고 있다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day25"),
        BookContent(day: "Day 26", titleString: "그녀도", contentString: "그녀도 날 그리워할까?", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day26"),
        BookContent(day: "Day 27", titleString: "생존", contentString: "결국 난 살아남을 것이고, 강해질 것이다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day27"),
        BookContent(day: "Day 28", titleString: "그녀와 나", contentString: "그녀는 과거에 살고, 나는 현재에 살기에 우리는 만날 수 없다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day28"),
        BookContent(day: "Day 29", titleString: "이미 푼 문제", contentString: "내가 고민하는 현재의 문제는 과거의 내가 해결했던 문제일 수 있다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day29"),
        BookContent(day: "Day 30", titleString: "생존2", contentString: "지금까지 잘 살아있는 것으로 보아 이번 시련도 잘 이겨냈다고 봅니다.", sourceString: "- 노재화 『다이아몬드는 개똥밭에 굴러도 다이아몬드이다 2』, 부크크(2021)", imageName: "day30")
    ]
}
