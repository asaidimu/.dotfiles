#!/usr/bin/env node

const format = ({ years, months, days, hours, minutes, seconds }) => {
    return `${years}:${months}:${days}:${hours}:${minutes}:${seconds}`;
};

const calculate = ({ ms }) => {
    let time = ms;
    const in_second = 1000;
    const in_minute = 60 * in_second;
    const in_hour = 60 * in_minute;
    const in_day = 24 * in_hour;
    const in_year = 365 * in_day;

    const truncate = (num) => {
        let result = String(num).substr(0, String(num).indexOf("."));
        if (Number(result) < 10) result = `0${result}`;
        return result;
    };

    let years = truncate(time / in_year);
    time = time % in_year;

    let days = truncate(time / in_day);
    time = time % in_day;

    let months = truncate(days / 30);
    days = days % 30;

    let hours = truncate(time / in_hour);
    time = time % in_hour;

    let minutes = truncate(time / in_minute);
    time = time % in_minute;

    let seconds = truncate(time / in_second);

    return { years, months, days, hours, minutes, seconds };
};

const getTimeToLive = ({ birthday, max_age }) => {
    const max = new Date(birthday).getTime() + max_age * 365 * 24 * 3600 * 1000;
    const now = new Date().getTime();

    const time = calculate({ ms: max - now });
    console.log(format(time));
};

getTimeToLive({ birthday: "1998/04/13", max_age: 80 });
