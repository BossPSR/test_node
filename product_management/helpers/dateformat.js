function dateTodayFormat(){
    const dt = new Date();
    const padL = (nr, len = 2, chr = `0`) => `${nr}`.padStart(2, chr);

    return `${
        dt.getFullYear()}-${padL(dt.getMonth()+1)}-${padL(dt.getDate())} ${
        padL(dt.getHours())}:${padL(dt.getMinutes())}:${padL(dt.getSeconds())}`;
}

module.exports = {
    dateTodayFormat
}