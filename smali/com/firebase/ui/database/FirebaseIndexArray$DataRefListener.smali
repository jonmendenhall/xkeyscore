.class final Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;
.super Ljava/lang/Object;
.source "FirebaseIndexArray.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/database/FirebaseIndexArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataRefListener"
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic this$0:Lcom/firebase/ui/database/FirebaseIndexArray;


# direct methods
.method public constructor <init>(Lcom/firebase/ui/database/FirebaseIndexArray;I)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->currentIndex:I

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v0, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$800(Lcom/firebase/ui/database/FirebaseIndexArray;Ljava/lang/Object;)V

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 5

    .line 224
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    iget v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->currentIndex:I

    invoke-static {v1, v2, v0}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$000(Lcom/firebase/ui/database/FirebaseIndexArray;ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->currentIndex:I

    .line 227
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v2, v0, v1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$100(Lcom/firebase/ui/database/FirebaseIndexArray;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v2}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$200(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    sget-object v4, Lcom/firebase/ui/common/ChangeEventType;->CHANGED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-static {v2, v4, p1, v1, v3}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$300(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v2}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$200(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 235
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    sget-object v4, Lcom/firebase/ui/common/ChangeEventType;->ADDED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-static {v2, v4, p1, v1, v3}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$400(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v2, v0, v1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$100(Lcom/firebase/ui/database/FirebaseIndexArray;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {v2}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$200(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    sget-object v4, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-static {v2, v4, p1, v1, v3}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$500(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    const-string v1, "FirebaseIndexArray"

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key not found at ref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    iget-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$600(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$600(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;->this$0:Lcom/firebase/ui/database/FirebaseIndexArray;

    invoke-static {p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->access$700(Lcom/firebase/ui/database/FirebaseIndexArray;)V

    :cond_3
    return-void
.end method
