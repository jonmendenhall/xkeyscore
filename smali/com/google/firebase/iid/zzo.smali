.class final synthetic Lcom/google/firebase/iid/zzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zznzg:Lcom/google/firebase/iid/zzk;

.field private final zznzh:Lcom/google/firebase/iid/zzr;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzk;Lcom/google/firebase/iid/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzo;->zznzg:Lcom/google/firebase/iid/zzk;

    iput-object p2, p0, Lcom/google/firebase/iid/zzo;->zznzh:Lcom/google/firebase/iid/zzr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzo;->zznzg:Lcom/google/firebase/iid/zzk;

    iget-object v1, p0, Lcom/google/firebase/iid/zzo;->zznzh:Lcom/google/firebase/iid/zzr;

    iget v1, v1, Lcom/google/firebase/iid/zzr;->zzift:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzk;->zzic(I)V

    return-void
.end method
