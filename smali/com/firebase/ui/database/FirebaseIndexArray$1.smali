.class Lcom/firebase/ui/database/FirebaseIndexArray$1;
.super Ljava/lang/Object;
.source "FirebaseIndexArray.java"

# interfaces
.implements Lcom/firebase/ui/database/SnapshotParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/database/FirebaseIndexArray;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/ui/database/SnapshotParser<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/database/FirebaseIndexArray;


# direct methods
.method constructor <init>(Lcom/firebase/ui/database/FirebaseIndexArray;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$1;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 71
    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseIndexArray$1;->parseSnapshot(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseSnapshot(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
