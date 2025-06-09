SELECT book.book_id, author.author_name, date_format(book.published_date, '%Y-%m-%d')
from book
join author 
on book.author_id = author.author_id
where book.category = '경제'
order by book.published_date asc;
