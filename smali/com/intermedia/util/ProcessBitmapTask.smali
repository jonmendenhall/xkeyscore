.class public final Lcom/intermedia/util/ProcessBitmapTask;
.super Landroid/os/AsyncTask;
.source "ProcessBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/ProcessBitmapTask$ProcessBitmapTaskException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private avatarUploader:Lcom/intermedia/user/AvatarUploader;

.field private fromRegistration:Z

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Lcom/intermedia/user/AvatarUploader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/util/ProcessBitmapTask;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    .line 23
    iput-object p2, p0, Lcom/intermedia/util/ProcessBitmapTask;->source:Ljava/lang/String;

    .line 24
    iput-boolean p3, p0, Lcom/intermedia/util/ProcessBitmapTask;->fromRegistration:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 5
    .param p1    # [Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 30
    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/intermedia/util/PhotoUtils;->imageFileFromBitmap(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/intermedia/util/ProcessBitmapTask$ProcessBitmapTaskException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create avatar file from bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/intermedia/util/ProcessBitmapTask$ProcessBitmapTaskException;-><init>(Lcom/intermedia/util/ProcessBitmapTask;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/intermedia/util/ProcessBitmapTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-static {p1}, Lcom/intermedia/util/PhotoUtils;->fileContainsValidBitmap(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/intermedia/util/ProcessBitmapTask;->avatarUploader:Lcom/intermedia/user/AvatarUploader;

    iget-object v1, p0, Lcom/intermedia/util/ProcessBitmapTask;->source:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/intermedia/util/ProcessBitmapTask;->fromRegistration:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/intermedia/user/AvatarUploader;->uploadAvatar(Ljava/io/File;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/intermedia/util/ProcessBitmapTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
