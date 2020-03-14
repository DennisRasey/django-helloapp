# Create your tests here.

from django.test import SimpleTestCase


class HomePageTests(SimpleTestCase):

    def test_home_page_status_code(self):
        response = self.client.get('/')
        self.assertEquals(response.status_code, 200)


class AboutPageTests(SimpleTestCase):

    def test_home_page_status_code(self):
        response = self.client.get('/about/')
        self.assertEquals(response.status_code, 200)
