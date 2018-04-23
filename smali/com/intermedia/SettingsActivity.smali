.class public final Lcom/intermedia/SettingsActivity;
.super Lcom/intermedia/injection/BaseInjectedActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/SettingsActivity$ViewHost;,
        Lcom/intermedia/SettingsActivity$SettingsActivityException;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_IMAGE_CAPTURE:I = 0x0

.field private static final REQUEST_CODE_PICK_IMAGE:I = 0x1


# instance fields
.field protected avatarUploader:Lcom/intermedia/user/AvatarUploader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected logoutManager:Lcom/intermedia/user/session/LogoutManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected userConfigRepository:Lcom/intermedia/config/UserConfigRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

.field private viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/intermedia/injection/BaseInjectedActivity;-><init>()V

    return-void
.end method

.method private logout()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->deviceRegistrar:Lcom/intermedia/libs/DeviceRegistrar;

    invoke-virtual {v0}, Lcom/intermedia/libs/DeviceRegistrar;->unregisterDevice()V

    .line 168
    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->userConfigRepository:Lcom/intermedia/config/UserConfigRepository;

    invoke-virtual {v0}, Lcom/intermedia/config/UserConfigRepository;->reset()V

    .line 169
    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->logoutManager:Lcom/intermedia/user/session/LogoutManager;

    invoke-virtual {v0}, Lcom/intermedia/user/session/LogoutManager;->logout()V

    .line 170
    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->finish()V

    return-void
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object v0, v0, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    const v0, 0x7f0800a4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showAddReferralDialog()V
    .locals 1

    .line 217
    new-instance v0, Lcom/intermedia/view/AddReferralDialog;

    invoke-direct {v0, p0}, Lcom/intermedia/view/AddReferralDialog;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v0}, Lcom/intermedia/view/AddReferralDialog;->show()V

    return-void
.end method

.method private showAvatarMenu()V
    .locals 2

    .line 182
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object v1, v1, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/high16 v1, 0x7f0d0000

    .line 183
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 185
    new-instance v1, Lcom/intermedia/SettingsActivity$$Lambda$16;

    invoke-direct {v1, p0}, Lcom/intermedia/SettingsActivity$$Lambda$16;-><init>(Lcom/intermedia/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 207
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    return-void
.end method

.method private showChangeUsernameDialog()V
    .locals 1

    .line 222
    new-instance v0, Lcom/intermedia/view/ChangeUsernameDialog;

    invoke-direct {v0, p0}, Lcom/intermedia/view/ChangeUsernameDialog;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0}, Lcom/intermedia/view/ChangeUsernameDialog;->show()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intermedia/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$SettingsActivity(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/intermedia/SettingsActivity;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method protected inject(Lcom/intermedia/injection/BaseActivityComponent;)V
    .locals 0
    .param p1    # Lcom/intermedia/injection/BaseActivityComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-interface {p1, p0}, Lcom/intermedia/injection/BaseActivityComponent;->inject(Lcom/intermedia/SettingsActivity;)V

    return-void
.end method

.method final synthetic lambda$onCreate$0$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity;->showAvatarMenu()V

    return-void
.end method

.method final synthetic lambda$onCreate$1$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity;->logout()V

    return-void
.end method

.method final synthetic lambda$onCreate$2$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->inputs:Lcom/intermedia/viewmodels/SettingsViewModel$Inputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Inputs;->referralButtonClicked()V

    return-void
.end method

.method final synthetic lambda$onCreate$3$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity;->showChangeUsernameDialog()V

    return-void
.end method

.method final synthetic lambda$onCreate$4$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    invoke-static {p1}, Lcom/intermedia/SettingsActivity$ViewHost;->access$000(Lcom/intermedia/SettingsActivity$ViewHost;)V

    return-void
.end method

.method final synthetic lambda$onCreate$5$SettingsActivity(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/intermedia/SettingsActivity;->showAddReferralDialog()V

    return-void
.end method

.method final synthetic lambda$showAvatarMenu$6$SettingsActivity(Landroid/view/MenuItem;)Z
    .locals 3

    .line 186
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a006c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0094

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a01b9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {p0, v1}, Lcom/intermedia/util/PhotoUtils;->takeNewPhoto(Landroid/app/Activity;I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->authedApi:Lcom/intermedia/network/AuthedApiService;

    invoke-interface {p1}, Lcom/intermedia/network/AuthedApiService;->deleteAvatar()Lio/reactivex/Single;

    move-result-object p1

    .line 200
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lcom/intermedia/SettingsActivity$$Lambda$17;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$18;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$18;-><init>(Lcom/intermedia/SettingsActivity;)V

    sget-object v2, Lcom/intermedia/SettingsActivity$$Lambda$19;->$instance:Lio/reactivex/functions/Consumer;

    .line 201
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 192
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Select Avatar"

    .line 194
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/intermedia/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/intermedia/injection/BaseInjectedActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_1

    .line 127
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "data"

    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "data"

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/intermedia/util/ObjectUtils;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 130
    new-instance p2, Lcom/intermedia/util/ProcessBitmapTask;

    iget-object p3, p0, Lcom/intermedia/SettingsActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    const-string v1, "camera"

    invoke-direct {p2, p3, v1, v2}, Lcom/intermedia/util/ProcessBitmapTask;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Z)V

    new-array p3, v0, [Landroid/graphics/Bitmap;

    aput-object p1, p3, v2

    .line 131
    invoke-virtual {p2, p3}, Lcom/intermedia/util/ProcessBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    iget-object p2, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p2, p2, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->unableToLoadImageString:Ljava/lang/String;

    iget-object p2, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p2, p2, Lcom/intermedia/SettingsActivity$ViewHost;->container:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget p3, p3, Lcom/intermedia/SettingsActivity$ViewHost;->hqRedColor:I

    invoke-static {p1, p2, p3}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    :pswitch_1
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 142
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 143
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 147
    new-instance p2, Lcom/intermedia/util/ProcessBitmapTask;

    iget-object p3, p0, Lcom/intermedia/SettingsActivity;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    const-string v1, "photoLibrary"

    invoke-direct {p2, p3, v1, v2}, Lcom/intermedia/util/ProcessBitmapTask;-><init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Z)V

    new-array p3, v0, [Landroid/graphics/Bitmap;

    aput-object p1, p3, v2

    .line 148
    invoke-virtual {p2, p3}, Lcom/intermedia/util/ProcessBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    iget-object p2, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p2, p2, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object p2

    new-instance p3, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v0, ""

    invoke-direct {p3, v0}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/intermedia/SettingsActivity$SettingsActivityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode bitmap from input stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/intermedia/SettingsActivity$SettingsActivityException;-><init>(Lcom/intermedia/SettingsActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p3, v0}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 151
    invoke-virtual {p2, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->unableToLoadImageString:Ljava/lang/String;

    iget-object p2, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p2, p2, Lcom/intermedia/SettingsActivity$ViewHost;->container:Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget p3, p3, Lcom/intermedia/SettingsActivity$ViewHost;->hqRedColor:I

    invoke-static {p1, p2, p3}, Lcom/intermedia/util/UIUtils;->showSnackBar(Ljava/lang/String;Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    invoke-super {p0, p1}, Lcom/intermedia/injection/BaseInjectedActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 79
    invoke-virtual {p0, p1}, Lcom/intermedia/SettingsActivity;->setContentView(I)V

    .line 80
    new-instance p1, Lcom/intermedia/SettingsActivity$ViewHost;

    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/intermedia/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p1, v0, p0}, Lcom/intermedia/SettingsActivity$ViewHost;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    .line 81
    new-instance p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    invoke-direct {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;-><init>()V

    iput-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    .line 82
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/intermedia/SettingsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    invoke-static {}, Lcom/intermedia/util/analytics/ClientEventReporter;->get()Lcom/intermedia/util/analytics/ClientEventReporter;

    move-result-object p1

    const-string v0, "profileMenu_opened"

    invoke-virtual {p1, v0}, Lcom/intermedia/util/analytics/ClientEventReporter;->log(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->avatarImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$0;-><init>(Lcom/intermedia/SettingsActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 88
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->logoutButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$1;-><init>(Lcom/intermedia/SettingsActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 89
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->referralButton:Landroid/widget/Button;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$2;-><init>(Lcom/intermedia/SettingsActivity;)V

    .line 90
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 91
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object p1, p1, Lcom/intermedia/SettingsActivity$ViewHost;->usernameTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$3;-><init>(Lcom/intermedia/SettingsActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 93
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->avatarUrl()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$4;-><init>(Lcom/intermedia/SettingsActivity;)V

    sget-object v1, Lcom/intermedia/SettingsActivity$$Lambda$5;->$instance:Lio/reactivex/functions/Consumer;

    .line 94
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 96
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->referralButtonIsEnabled()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 97
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/SettingsActivity$$Lambda$6;->get$Lambda(Lcom/intermedia/SettingsActivity$ViewHost;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lcom/intermedia/SettingsActivity$$Lambda$7;->$instance:Lio/reactivex/functions/Consumer;

    .line 98
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 100
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->referralNameForButton()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 101
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object v0, v0, Lcom/intermedia/SettingsActivity$ViewHost;->referralButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/SettingsActivity$$Lambda$8;->get$Lambda(Landroid/widget/Button;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lcom/intermedia/SettingsActivity$$Lambda$9;->$instance:Lio/reactivex/functions/Consumer;

    .line 102
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 104
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->showAddedReferralDialog()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 105
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$10;-><init>(Lcom/intermedia/SettingsActivity;)V

    .line 106
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 108
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->showAddReferralDialog()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 109
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lcom/intermedia/SettingsActivity$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/intermedia/SettingsActivity$$Lambda$11;-><init>(Lcom/intermedia/SettingsActivity;)V

    .line 110
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 112
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->tooltipButtonIsEnabled()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 113
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object v0, v0, Lcom/intermedia/SettingsActivity$ViewHost;->tooltipButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/SettingsActivity$$Lambda$12;->get$Lambda(Landroid/widget/Button;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lcom/intermedia/SettingsActivity$$Lambda$13;->$instance:Lio/reactivex/functions/Consumer;

    .line 114
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 116
    iget-object p1, p0, Lcom/intermedia/SettingsActivity;->viewModel:Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;

    iget-object p1, p1, Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;->outputs:Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;

    invoke-interface {p1}, Lcom/intermedia/viewmodels/SettingsViewModel$Outputs;->username()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/intermedia/SettingsActivity;->bindToLifecycle()Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->compose(Lio/reactivex/FlowableTransformer;)Lio/reactivex/Flowable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/SettingsActivity;->viewHost:Lcom/intermedia/SettingsActivity$ViewHost;

    iget-object v0, v0, Lcom/intermedia/SettingsActivity$ViewHost;->usernameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/intermedia/SettingsActivity$$Lambda$14;->get$Lambda(Landroid/widget/TextView;)Lio/reactivex/functions/Consumer;

    move-result-object v0

    sget-object v1, Lcom/intermedia/SettingsActivity$$Lambda$15;->$instance:Lio/reactivex/functions/Consumer;

    .line 117
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
