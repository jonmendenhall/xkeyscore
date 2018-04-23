.class final Lcom/google/firebase/iid/zzw;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zznzo:Lcom/google/firebase/iid/zzv;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zznzo:Lcom/google/firebase/iid/zzv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zznzo:Lcom/google/firebase/iid/zzv;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzv;->zza(Lcom/google/firebase/iid/zzv;Landroid/os/Message;)V

    return-void
.end method
