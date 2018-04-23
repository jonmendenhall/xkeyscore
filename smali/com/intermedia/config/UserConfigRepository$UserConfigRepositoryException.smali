.class Lcom/intermedia/config/UserConfigRepository$UserConfigRepositoryException;
.super Ljava/lang/Throwable;
.source "UserConfigRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/config/UserConfigRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserConfigRepositoryException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/config/UserConfigRepository;


# direct methods
.method constructor <init>(Lcom/intermedia/config/UserConfigRepository;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/config/UserConfigRepository;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    iput-object p1, p0, Lcom/intermedia/config/UserConfigRepository$UserConfigRepositoryException;->this$0:Lcom/intermedia/config/UserConfigRepository;

    .line 135
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
