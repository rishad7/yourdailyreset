import axios from "axios";

const baseDomain = document.getElementsByName('base')[0].getAttribute('content');
const baseUrl = baseDomain + "api/v1";
const csrfToken = document.getElementsByName('csrf-token')[0].getAttribute('content');
const krispsToken = document.getElementsByName('krisps')[0].getAttribute('content');

const api = axios.create({
    baseURL: baseUrl,
    headers: {
        'Accept': 'application/vnd.krips+json;version=1',
        'Authorization': 'Bearer ' + krispsToken,
        'X-CSRF-Token': csrfToken
    }
});

export default api;