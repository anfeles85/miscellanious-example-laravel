@extends('templates.base')
@section('title', 'Crear empleado')
@section('header', 'Crear empleado')
@section('content')

    <div class="card mb-4">
        <div class="card-header pb-0">
            <h6>Crear Empleado</h6>
        </div>

        <div class="card-body pt-2 pb-2">
            <form>
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="number" class="form-control" id="document" name="document" placeholder="Documento">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" placeholder="Nombre" class="form-control" id="fullname" name="fullname" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" id="address" name="address" placeholder="Dirección">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" placeholder="Teléfono" class="form-control" id="phone" name="phone" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <select name="type_id" id="type_id">
                                <option value="1">INSTRUCTOR</option>
                                <option value="2">COORDINADOR</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 d-grid">                        
                        <button class="btn btn-success">Aceptar</button>                      
                    </div>
                    <div class="col-md-6 d-grid">                       
                        <button class="btn btn-secondary">Cancelar</button>                        
                    </div>
                </div>
            </form>
        </div>
    </div>

@endsection
