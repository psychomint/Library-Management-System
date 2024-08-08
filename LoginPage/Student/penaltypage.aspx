<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentNew.Master" AutoEventWireup="true" CodeBehind="penaltypage.aspx.cs" Inherits="LoginPage.Student1.penaltypage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="intro">
        <div class="container">
            <div class="text-center">
                <h2 class="px-3 text-dark d-inline-block rounded-3" style="background-color:#f8f9fa;">Penalty Information</h2>
            </div>
            
            
            <div class="table-container">
                <div id="penaltyTable_wrapper" class="table-responsive">
                    <table id="penaltyTable" class="table table-hover table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Branch Name</th>
                                <th>Books</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Data will be populated dynamically -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript libraries -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function () {
            // Initialize DataTable with Bootstrap styling
            $('#penaltyTable').DataTable({
                responsive: true,
                columns: [
                    { title: 'Branch Name', data: 'branchname' },
                    { title: 'Books', data: 'branchname' } // Adjust this according to your data structure
                ],
                dom: 'Bfrtip', // Adds buttons to the DataTable
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print', 'colvis'
                ]
            });

            // Fetch data from the API or server and load it into the DataTable
            $.ajax({
                url: '/branchService.asmx/GetBranch', // Example URL, replace with your actual endpoint
                method: 'POST',
                dataType: 'json',
                success: function (data) {
                    // Clear existing data
                    $('#penaltyTable').DataTable().clear();
                    // Add new data
                    $('#penaltyTable').DataTable().rows.add(data);
                    // Redraw the table
                    $('#penaltyTable').DataTable().draw();
                },
                error: function (xhr, status, error) {
                    console.error('Error fetching data:', error);
                }
            });
        });
    </script>

    <style>
    .table-container {
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }
        #penaltyTable_wrapper {
            background-color: rgba(255, 255, 255, 0.95); /* Background for DataTable wrapper */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }
    </style>
</asp:Content>
