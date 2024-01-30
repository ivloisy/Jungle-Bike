document.addEventListener('DOMContentLoaded', function () {
    // Écoutez l'événement de changement de statut
    document.querySelectorAll('.status-form').forEach(function (form) {
        form.addEventListener('change', function () {
            // Récupérez les données nécessaires
            const taskId = form.dataset.taskId;
            const newStatus = form.querySelector('input[name="status"]:checked').value;

            // Envoyez une requête AJAX pour mettre à jour le statut
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'update_task_status.php', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    const response = JSON.parse(xhr.responseText);
                    if (response.success) {
                        // Mise à jour réussie
                        // Actualisez la page si nécessaire
                        window.location.reload();
                    } else {
                        // Gérez les erreurs côté client
                        console.error('Erreur lors de la mise à jour du statut de la tâche:', response.message);
                    }
                } else {
                    // Gérez les erreurs côté client
                    console.error('Erreur lors de la requête AJAX:', xhr.status, xhr.statusText);
                }
            };
            xhr.send('task_id=' + taskId + '&status=' + newStatus);
        });
    });
});

