from django.shortcuts import render_to_response
from gtd.todo.models import List
from gtd.todo.models import Item


def status_report(request):
    todo_listing = []
    for todo_list in List.objects.all():
        todo_dict = {}
        todo_dict['list_object'] = todo_list
        todo_dict['items_all'] = Item.objects.all()
        todo_dict['item_count'] = todo_list.item_set.count()
        todo_dict['items_complete'] = todo_list.item_set.filter(completed=True).count()
        todo_dict['percent_complete'] = int(float(todo_dict['items_complete']) / todo_dict['item_count'] * 100)
        todo_listing.append(todo_dict)
        return render_to_response('status_report.html', { 'todo_listing': todo_listing })
