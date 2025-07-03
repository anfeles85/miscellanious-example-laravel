@extends('templates.base')
@section('title', 'Empleados')
@section('header', 'Empleados')
@section('content')

    <div class="card mb-4">
        <div class="card-header pb-0">
            <h6>Lista de Empleados</h6>
            <a href="{{ route('employee.create') }}" class="btn btn-primary">Crear</a>
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
                                    <a href="#" id="show_{{ $employee['document'] }}" title="Ver" data-bs-toggle="modal" data-bs-target="#informationModal_{{ $employee['document'] }}">
                                        <button type="button" class="btn btn-secondary btn-circle btn-sm">
                                            <i class="far fa-eye"></i>
                                        </button>
                                    </a>                                    
                                    
                                    <a href="{{ route('employee.edit', $employee['document']) }}" class="btn btn-info btn-circle btn-sm" title="Editar">
                                        <i class="far fa-edit"></i>
                                    </a>

                                    <form id="form-delete-{{ $employee['document'] }}" action="{{ route('employee.destroy', $employee['document']) }}"
                                          method="post" style="padding:0;margin:0">
                                        @csrf
                                        @method('DELETE')

                                        <button type="submit" class="btn btn-danger btn-circle btn-sm" title="Eliminar" 
                                        onclick="event.preventDefault(); remove({{ $employee['document'] }})">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>                                       
                                </td>
                                <!-- modal Ver -->
                                <div class="modal fade" id="informationModal_{{ $employee['document'] }}" tabindex="-1" role="dialog" 
                                    aria-labelledby="informationModalLabel" aria-hidden="true" >
                                    <div class="modal-dialog modal-dialog-left" role="document" style="margin-top: 150px;">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="informationModalLabel">Detalle del empleado</h5>
                                                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="close">
                                                    <span>&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <p><strong>Documento:</strong> {{ $employee["document"] }}</p>
                                                <p><strong>Nombre:</strong> {{ $employee["fullname"] }}</p>
                                                <p><strong>Dirección:</strong> {{ $employee["address"] }}</p>
                                                <p><strong>Teléfono:</strong> {{ $employee["phone"] }}</p>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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