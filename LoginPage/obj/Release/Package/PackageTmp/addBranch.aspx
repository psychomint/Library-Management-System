<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="addBranch.aspx.cs" Inherits="LoginPage.addBranch1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro d-flex align-items-center">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Add Branch Card -->
                <div class="col-md-6 col-sm-12 card-section">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h2 class="card-title text-center">Add a Branch</h2>
                            
                                <div class="mb-3">
                                    <label for="tbaddbranch" class="form-label fw-bold text-primary">Branch Name:</label>
                                    <asp:TextBox ID="tbaddbranch" runat="server" CssClass="form-control" Text="" placeholder="Branch Name" />
                                    <asp:RequiredFieldValidator ControlToValidate="tbaddbranch" ErrorMessage="Branch Name is required." runat="server" CssClass="error-message" ForeColor="red" />
                                </div>
                                <div class="d-grid gap-2">
                                    <asp:Button ID="btnbranch" class="btn btn-primary" runat="server" Text="Add Branch" OnClick="Button2_Click" />
                                </div>
                            
                        </div>
                    </div>
                </div>

                <!-- DataTable Section -->
                <div class="col-md-12 col-sm-12">
                    <div class="table-container">
                        <h2 class="text-center">Available Branches</h2>
                        <div class="table-responsive">
                            <table id="studentTable" class="table table-hover table-bordered table-striped"></table>
                        </div>
                        <asp:Label ID="lblmsg" runat="server" Text="" CssClass="success-message" ForeColor="Green" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables JS -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.colVis.min.js"></script>
    <script>
        $(document).ready(function () {
            // Initialize DataTable with Bootstrap styling
            $('#studentTable').DataTable({
                responsive: true,
                columns: [
                    { title: 'Branch Name', data: 'branchname' },
                    { title: 'Books', data: 'branchname' }
                ],
                dom: 'Bfrtip', // Adds buttons to the DataTable
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print', 'colvis'
                ]
            });

            // Fetch data from the API and load it into the DataTable
            $.ajax({
                url: '/branchService.asmx/GetBranch',
                method: 'POST',
                dataType: 'json',
                success: function (data) {
                    // Clear existing data
                    $('#studentTable').DataTable().clear();
                    // Add new data
                    $('#studentTable').DataTable().rows.add(data);
                    // Redraw the table
                    $('#studentTable').DataTable().draw();
                },
                error: function (xhr, status, error) {
                    console.error('Error fetching data:', error);
                }
            });
        });
    </script>
</asp:Content>
