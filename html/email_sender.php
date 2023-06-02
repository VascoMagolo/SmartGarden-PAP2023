<?php
use MailerSend\MailerSend;
use MailerSend\Helpers\Builder\Variable;
use MailerSend\Helpers\Builder\Recipient;
use MailerSend\Helpers\Builder\EmailParams;

$mailersend = new MailerSend(['api_key' => 'mlsn.24b45d8ccc7d582ae613ee3c2f987e9cb5ed270a7ba979be45c1cb39a16c20c6']);

$variables = [
    new Variable('vascomagolo@gmail.com', [
        'name' => 'SmartGarden',
        'account.name' => 'FarmConnect',
        'support_email' => 'newsletter@farmconnect.pt'
    ])
];

$recipients = [
    new Recipient('vascomagolo@gmail.com', 'Recipient'),
];

$emailParams = (new EmailParams())
    ->setFrom('test@farmconnect.pt')
    ->setFromName('Vasco')
    ->setRecipients($recipients)
    ->setSubject('Subject')
    ->setTemplateId('v69oxl58qqkl785k')
    ->setVariables($variables);

$mailersend->email->send($emailParams);
header("Location:index.php");
?>



