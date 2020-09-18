<?php

namespace App\Http\Controllers;
use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\StoreContact;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $contacts = DB::table('contacts')
            ->where('availability', 1)
            ->get();

        return view('contacts.index', compact('contacts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('contacts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreContact $request)
    {
        $contact = new Contact([
            'name' => $request->get('name'),
            'contact' => $request->get('contact'),
            'email' => $request->get('email'),
            'address' => $request->get('address'),
            'image' => $request->get('image'),
            'availability' => $request->get('availability'),
            'note' => $request->get('note')
        ]);
            
        if ($request->hasfile('image')) {
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file-> move('uploads/pictures' , $filename);
            $contact ->image = $filename;
        }else {
            return "no image found";
            $contact ->image= '';

        }
        
        $contact->save();
        return redirect('/contacts')->with('success', 'Contact saved!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $contact = Contact::find($id)
        ->update(['availability' => 1]);

        return redirect('/contacts')->with('success', 'Contact Restore!');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact)
    {
        return view('contacts.edit', compact('contact'));
    }
    public function view(Contact $contact)
    {
        //
        // $contact = Contact::find($id);
        return view('contacts.view', compact('contact'));   
    }
    public function deleted()
    {
        $contacts = DB::table('contacts')
        ->where('availability', 0)
        ->get();
        return view('contacts.deleted', compact('contacts'));
    }


    public function history($id)
    {
        $contact = Contact::find($id);
        return view('contacts.history', compact('contact'));   
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(StoreContact $request, Contact $contact)
    {
        // //
        // $request->validate([
        //     'name'=>'required',
        //     'email'=>'required',
        //     'contact'=>'required',
        //     'address' => 'required'
        // ]);

        // $contact = Contact::find($id);
        // $contact->name =  $request->get('name');
        // $contact->email = $request->get('email');
        // $contact->contact = $request->get('contact');
        // $contact->address = $request->get('address');
        // $contact->Note = $request->get('note');
        // $contact->save();

        $contact->update($request->all());

        return redirect('/contacts')->with('success', 'Contact updated!');
    }

    public function return($id)
    {
        $contact = Contact::find($id);
        $contact->availability =  $request->get('availability');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        $contact = Contact::find($id)
            ->update(['availability' => 0]);

        return redirect('/contacts')->with('success', 'Contact Soft Deleted!');
    }

    public function restore($id)
    {
        return "hi";
        //
        // $contact = Contact::find($id)
        // ->update(['availability' => 1]);

        // return redirect('/contacts')->with('success', 'Contact Restored!');
    }

    
    public function transfer ($id)
    {
        $contact = Contact::find($id);
    }

}
