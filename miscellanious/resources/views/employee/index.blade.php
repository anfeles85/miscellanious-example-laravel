@extends('templates.base')
@section('title', 'Empleados')
@section('header', 'Empleados')
@section('content')

    <div class="card mb-4">
        <div class="card-header pb-0">
            <h6>Lista de Empleados</h6>
        </div>

        <div class="card-body px-0 pt-0 pb-2">
            <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                    <thead>
                        <tr>
                            <th class="align-middle text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Documento</th>
                            <th class="align-middle text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nombre</th>
                            <th class="align-middle text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Dirección</th>
                            <th class="align-middle text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Teléfono</th>
                            <th class="align-middle text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($employees as $employee) 
                            <tr>
                                <td class="align-middle text-center">{{ $employee["document"] }}</td>
                                <td class="align-middle text-center">{{ $employee["fullname"] }}</td>
                                <td class="align-middle text-center">{{ $employee["address"] }}</td>
                                <td class="align-middle text-center">{{ $employee["phone"] }}</td>
                                <td class="align-middle text-center">                                    
                                    <a href="{{ route('employee.edit', $employee["document"]) }}" class="btn btn-info btn-circle btn-sm" title="Editar">
                                        <i class="far fa-edit"></i>
                                    </a>

                                    <form id="form-delete-{{ $employee['document'] }}" action="{{ route('employee.destroy', $employee["document"]) }}"
                                          method="post" style="padding:0;margin:0">
                                        @csrf
                                        @method('DELETE')

                                        <button type="submit" class="btn btn-danger btn-circle btn-sm" title="Eliminar" 
                                        onclick="event.preventDefault(); remove({{ $employee['document'] }})">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>                                       
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>    
   


@endsection

@section('scripts')
    @if(session('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: '¡OK!',
                text: '{{ session('success') }}',
                confirmButtonColor: '#3085d6',
                confirmButtonText: 'OK'
            });
        </script>
    @endif

    <script>
        function remove(id) {
            Swal.fire({
                title: '¿Estás seguro?',
                text: "¡Esta acción no se puede deshacer!",
                icon: 'question',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#3085d6',
                confirmButtonText: 'Sí, eliminar',
                cancelButtonText: 'Cancelar',
                allowOutsideClick: false
            }).then((result) => {
                if (result.isConfirmed) {
                    document.getElementById('form-delete-' + id).submit();
                }
            });
    
        }
    </script>    
@endsection