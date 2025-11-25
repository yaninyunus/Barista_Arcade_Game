if (state == CustomerState.ORDER) {
    instance_destroy(other);
    state = CustomerState.LEAVE;
}
