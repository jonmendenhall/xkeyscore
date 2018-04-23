.class Lcom/intermedia/service/JSONRequest$JsonRequestException;
.super Ljava/lang/Throwable;
.source "JSONRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/service/JSONRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonRequestException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/service/JSONRequest;


# direct methods
.method constructor <init>(Lcom/intermedia/service/JSONRequest;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/service/JSONRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/intermedia/service/JSONRequest$JsonRequestException;->this$0:Lcom/intermedia/service/JSONRequest;

    .line 112
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
