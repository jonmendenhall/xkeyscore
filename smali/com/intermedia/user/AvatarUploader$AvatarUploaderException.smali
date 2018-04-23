.class Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;
.super Ljava/lang/RuntimeException;
.source "AvatarUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/user/AvatarUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarUploaderException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/user/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/intermedia/user/AvatarUploader;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/intermedia/user/AvatarUploader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    iput-object p1, p0, Lcom/intermedia/user/AvatarUploader$AvatarUploaderException;->this$0:Lcom/intermedia/user/AvatarUploader;

    .line 135
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
